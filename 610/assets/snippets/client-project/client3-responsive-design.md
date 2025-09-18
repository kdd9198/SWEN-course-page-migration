We would like you to research and incorporate [Reactstrap](https://reactstrap.github.io/?path=/story/home-installation--page) into your project. Reactstrap is a library that creates React components for incorporating Bootstrap features easily. Install using the `npm install` command they show (not the CDN install). Be sure to review **About the Project** for an explanation of how it integrates the two.

We would like you to:

* Use the [Reactstrap components](https://reactstrap.github.io/?path=/story/home-installation--page) (also see [Bootstrap](https://getbootstrap.com/docs/5.0/getting-started/introduction/)). We will give an overview of this in class, so be sure to review the lecture. If a Reactstrap equivalent component doesn’t exist, you can use basic Bootstrap or HTML, but try use use Reactstrap for the majority of the work.
* Your application must be usable on a desktop, and usable on an **iPhone X**, i.e. 375 x 812 px. We want the following:
    * Use the [Grid System](https://reactstrap.github.io/?path=/docs/components-layout--layout) to lay out your UI and place the Reactstrap components. I like to use `Container, Row, Col` for layout and `Card, Dropdown, FormGroup` for data etc. … but feel free to expand your horizons.
    * The UI must adjust on the desktop vs. on mobile, i.e. take advantage of the Bootstrap breakpoints, enable the layout to ‘flow’
    * When on a mobile device, the components need to be arranged to maximize the screen real estate
    * No horizontal scrolling on either desktop or mobile
    * All UI components should be big enough to be usable by touchscreen, i.e. “fat finger compatible”
    * Minimize the number of “clicks” or “taps” needed to use your UI
    * This is still a simple application, but keep basic usability in your implementation.
    * Ensure error cases are cleanly handled. Now that you have a ‘real’ UI, this is an important task for development. Make sure you test for error cases, not just ‘happy path’

Test out your application in the browser’s Development Tools used to simulate devices. In Chrome it’s called [Device Mode](https://developer.chrome.com/docs/devtools/device-mode/) and Firefox it’s [Responsive Design Mode](https://firefox-source-docs.mozilla.org/devtools-user/responsive_design_mode/index.html). Note that just resizing the window is not a perfect simulation of what it would look like on a device.