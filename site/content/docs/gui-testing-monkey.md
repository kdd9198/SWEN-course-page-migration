---
title: 'Gui Testing With Monkey'
date: '2025-10-20T10:13:26-04:00'

weight: 2

draft: true
---

## In-Class Activity – GUI Testing With Monkey

This short guide gets you from zero to running the Android `monkey` tool against an app running in an emulator.

### Setup

#### Install Android Studio

1. Download Android Studio from the official site: [developer.android.com/studio](https://developer.android.com/studio)
2. Run the installer and accept the default SDK & tools installation (Android SDK, SDK Platform tools, Emulator).
3. Open Android Studio to finish first-time setup.

#### Create a simple sample app (Empty Activity)

1. In Android Studio: **New Project → Basic Views Activity / Bottom Navigation Views Activity (or any other sample activity).**
2. Enter a name (e.g., `MyApplication`), package name (default is fine), choose Java or Kotlin, then Finish.
3. Later Press the green Run ▶️ button to build and install the sample app to the emulator (create in the next step).

#### Create an emulator

1. Open Device Manager: **Android Studio → Tools → Device Manager** (or AVD Manager on older versions).
2. Click **+ Create Virutal Device**, pick a phone (e.g., Pixel), click Next.
3. Select a system image (download one if needed), click Finish.
4. Start the emulator by hitting the play button in Device Manager.

Emulator start can take a minute the first time. Keep it running for the demo.

#### Confirm the app is installed on the emulator

Run step 2.3

Open a terminal and run:

```
adb devices
adb shell pm list packages | grep example
```

Example output when your app package is present:

```
package:com.example.myapplication
```

If your app package is not listed, run the app from Android Studio (Run ▶️) while the emulator is running.

#### Find the package name & launcher activity (optional)

Package is often visible in `AndroidManifest.xml`. To detect via adb:

```
# list packages and filter (replace 'example' with a substring)
adb shell pm list packages | grep example

# get the main activity (returns e.g. com.example.myapp/.MainActivity)
adb shell cmd package resolve-activity --brief com.example.myapplication | tail -n 1
```

### Monkey Basic Usage

```
adb shell monkey -p com.example.myapplication -v 100
```

* `-p` specifies the package (app) to target.
* `-v` increases verbosity (add `-v -v` for even more detail).
* 100 = number of events Monkey will send.

### Run for a Specific Duration

Monkey itself doesn’t take time directly, but you can approximate it:

```
adb shell monkey -p com.example.myapplication --throttle 200 -v 500
```

* `--throttle 200` = 200ms between events.
* 500 events * 200ms ≈ 100 seconds runtime.

### Useful Options

#### Limit to One App (Prevent Switching Apps)

```
adb shell monkey -p com.example.myapplication --ignore-crashes --ignore-timeouts --ignore-security-exceptions -v 500
```

#### Control Event Percentages

You can adjust how Monkey distributes different kinds of events:

```
adb shell monkey -p com.example.myapplication \
    --pct-touch 70 \
    --pct-motion 20 \
    --pct-nav 5 \
    --pct-syskeys 0 \
    -v 1000
```

* `--pct-touch` = % of touch events.
* `--pct-motion` = % of gestures like swipes.
* `--pct-nav` = % of navigation events (back, menu).
* `--pct-syskeys` = % of system keys (set to 0 to avoid HOME/POWER interruptions).

#### Seed for Reproducibility

```
adb shell monkey -p com.example.myapplication -s 12345 -v 500
```

`-s` sets a random seed → use the same seed to reproduce the same sequence.

#### Log Everything

```
adb shell monkey -p com.example.myapplication -v -v 100 > monkey_log.txt
```

### Deliverables

When you’ve finished, take a screenshot of your Android Studio window and upload it to `Drive → In-Class Activity → GUI Test-Monkey`