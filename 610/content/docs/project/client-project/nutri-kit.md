---
title: 'Nutri-Kit'
date: '2025-09-17T23:29:12-04:00'

weight: 200
bookToC: true
bookSearchExclude: false

draft: true
---

## Nutri-Kit

### Overview

For this assignment, you will build a web applications using HTML, CSS and Javascript for managing food items and viewing/ tracking nutriional information. Food items will be in groups according to the nutritional pyramid, and you will build up a menu using one or more items from the various food groups.

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
* Add a pull down menu (drop-down list) control with the following values
    * Protein
    * Carbs
    * Fruits
    * Vegetables
    * Sweets
    * Use the `<select>` tag with those options. There should also be a default selection with an empty value (blank). Make sure it is a dropdown list as shown in the sample below.
* Add a set of radio buttons with the following values
    * Black
    * Red
    * Green
    * Blue
    * Purple
    * Use the `<input type="radio">` tag. Make sure the radio buttons operate as a group. i.e. only one item can be selected at a time!
* Add a text box (textarea) control with the following initial content `Food Type...`
    * Use the `<textarea>` tag. Set the control to be non-expandable. Set the rows and columns properties to your liking. Position the control in the center.
* Add a small javascript function (place in `<HEAD>` ) that will reflect the value of the selection of the SELECT tag (e.g. Protein, Fruit, Vegetables, …) as soon as the value changes. Use the value of the current selection in the radio button group to set the colour of the font in the text area.
    * HINT: Use the onchange event and document.getElementByName or get clever with onclick and pass in the object instance
* Use style attributes to adjust the position of controls (so everything is not at the edges or clustered together). Look at the sample page and try to get as close as possible to the centering and left/ right/ top/ bottom positioning shown in the screen-shot. NOTE: In part-0, we want you to put the styles in-line, and not use CSS. That will come later.

### Grading

Grading: 10 points total

Web Page and Actions:

* Title & Headings: 1 point
* Listbox creation: 1 points
* Radio button: 1 points
* Textarea creation (with resizing disabled): 1
* Layout & Alignment: 2
* Javascript dynamic updates: 4