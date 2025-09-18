---
title: 'Nightclub'
date: '2025-09-17T23:01:42-04:00'

weight: 100
bookToC: true
bookSearchExclude: false

draft: true
---

## Nightclub Capacity App

### Overview

For this assignment, you will build a web applications using HTML, CSS and Javascript for monitoring people entering and leaving your chain of nightclubs. You’ve been very successful in attracting crowds, but the fire-marshal has warned you about overcrowding. You are strictly monitoring people entering/ leaving, and bouncers at the door will track and control entry using the capacity app.

## Client-0 Startup: Your first web page

### Overview

{{< snippet "/snippets/client-project/client0-overview.md" >}}

### Setup

{{< snippet "/snippets/client-project/client0-setup.md" >}}

### Requirements

You will implement the following controls and behaviour for your webpage (`index.html`)

* Set the default font to ‘Segoe UI’
* Add a title using the `<h1>` tag to the top of the page with the following text ‘swen-610 Web Assignment 0’
    * Set the font to Bold, Verdana, with a size of 36px (Use the style property) and centre the title.
* Add a sub-heading with the `<h2>` tag.
    * The text content should be ‘Section xx’, where ‘xx’ is your section number. Set the font to “Impact”
    * Center the text.
* Add a dropdown list control with the following values (names of the nightclubs)
    * Club Arcane
    * Club Underground
    * Club Soda
    * Studio 52
    * Ciro’s
    * Paradisio Garage
    * Use the `<select>` tag with those options. There should also be a default selection with an empty value (blank). Make sure it is a dropdown list as shown in the sample below.
* Add a box that displays the details of each club. Each time the listbox selection changes, the details of the club will change in this box. The details will include:
    * Club Name (This will be the same name selected in the listbox)
    * Club Location (Which city) Capacity (pick a variety of capacities … your choice)
    * Musical Theme (Rock, Pop, Metal, Grunge …)
* Also, provide a different background colour for each Club, and make sure the font color is also adjusted to make the text readable with the background - perhaps Club Arcane is black background with white font; Club Soda is white background with black text.
* Add a small javascript function (place in `<HEAD>` ) that will control changing the information in the box based on the value of the selection of the SELECT tag (e.g. Club Arcane, Club Underground, …). 
    * HINT: Use the `onchange` event and `document.getElementById`
* Use style attributes to adjust the position of controls (so everything is not at the edges or clustered together). Look at the sample page and try to get as close as possible to the centering and left/ right/ top/ bottom positioning shown in the screen-shot. NOTE: In part-0, we want you to put the styles in-line, and not use CSS. That will come later.

### Grading

Grading: 10 points total

Web Page and Actions:

* Title & Headings: 1 point
* Dropdown list: 1 points
* Display box: 1 points
* Layout & Alignment: 2
* Javascript dynamic updates: 5