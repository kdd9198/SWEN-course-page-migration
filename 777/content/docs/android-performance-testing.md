---
title: 'Android Performance Testing'
date: '2025-10-20T10:14:48-04:00'

weight: 5

draft: true
---

## In-Class Activity: Android Performance Testing

This activity demonstrates how profiling looks in Android Studio. We use **Monkey** to simulate performance testing by generating random events. In a real project, your test case might be repeating the same sequence (e.g., login) many times.

### Step 1: Clone and Import the App

1. Clone the Now in Android sample app:
    ```
    https://github.com/android/nowinandroid.git
    ```
2. Open the project in Android Studio and wait for Gradle sync to finish (This might take a while).
3. Launch the app on a virtual device (AVD).

### Step 2: Enable Debuggable Mode

Confirm the app is running in **debug mode** (default for Android Studio run, check: View > Tool Windows > Build Variants (Mac)).

### Step 3: Attach Profiler

1. Open **View → Tool Windows → Profiler**.
2. Attach to the running `com.google.samples.apps.niacatalog` app.
3. Observe CPU and Memory live graphs (You can choose `View Live Telemetry`, but feel free to play with other profiler tasks).

### Step 4: Run Monkey Commands

Use Monkey to simulate different performance testing types.

Before running the Monkey commands, here is an explanation of the key parameters you will see:

* `-p <package>`: Specifies the app package to test.
* `--throttle <ms>`: Time delay between events in milliseconds.
* `--pct-touch <percentage>`: Percentage of touch events.
* `--pct-motion <percentage>`: Percentage of motion events like swipes or drags.
* `<event_count>`: Total number of events to generate.

#### Load Testing

```
adb shell monkey -p com.google.samples.apps.niacatalog --throttle 100 --pct-touch 70 --pct-motion 20 10000
```

You should see a steady CPU usage around 10–20% with periodic memory allocation.

#### Soak Testing

```
adb shell monkey -p com.google.samples.apps.niacatalog --throttle 300 --pct-touch 70 --pct-motion 20 50000
```

You should see long-running, moderate CPU usage and memory slowly growing over time.

#### Stress Testing

```
adb shell monkey -p com.google.samples.apps.niacatalog --throttle 10 --pct-touch 70 --pct-motion 20 20000
```

You should see CPU usage spike much higher, sometimes near 100%, with occasional freezes.

#### Spike Testing

```
adb shell monkey -p com.google.samples.apps.niacatalog --throttle 1 --pct-touch 70 --pct-motion 20 2000
```

You should see a sudden CPU spike and rapid memory allocations, then drop back once events finish.

### Deliverables

When you’ve finished, take a screenshot of your Terminal and upload it to `Drive → In-Class Activity → 7 Performance Testing`