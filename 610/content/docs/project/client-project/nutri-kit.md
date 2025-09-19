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
    * HINT: Use the `onchange` event and `document.getElementByName` or get clever with onclick and pass in the object instance
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

### Sample Output

UI Specifications are often page mockups. Your page should be similar to this…

#### Sample Page 1

![Sample Page 1](/images/client-project/nutrikit-0.0.jpg)

#### Sample Page 2

![Sample Page 2](/images/client-project/nutrikit-0.1.jpg)

#### Sample Page 3

![Sample Page 3](/images/client-project/nutrikit-0.2.jpg)

## Client 1

### Setup

{{< snippet "/snippets/client-project/client1-setup.md" >}}

### Client-1 Initial UI

Your app maintains a list of grocery items for basic food groups [proteins, fruits, vegetables, grains, dairy]. For each category, there is a list of 5 items in that category. A user can select an item an add to there selection list/ menu. As each item is added (or removed), the total calories fo the selection list (menu) is summarized.

The following are the behaviour expectations
* Set the default font to ‘Segoe UI’ Add a title using the `<h1>` tag, centred, to the top of the page with the following text ‘NutriKit Food Planner’
* Add a sub-heading, `<h3>`, centred, with the following text `NutriKit allows you to select your groceries, and track your nutritional progress (good or bad)`
* Use a pull-down menu with a `<select>` with options for the following food categories - “proteins”, “fruits”, “vegetables”, “dairy”, “grain”
* Provide a listbox that can hold 5 items, and as a food category is selected, populate the listbox with the matching food items. 
    * Each food item also has a calorie count associated with it. The data is shown below. You will need to decide how to represent that data in your code. Remember, there is no database (yet), so you need to keep this all client side!

|Proteins|Calories|
|---|---|
|steak|300|
|ground beef|200|
|chicken|100|
|fish|80|
|soy|50|

|Fruits|Calories|
|---|---|
|orange|300|
|banana|200|
|pineapple|100|
|grapes|80|
|blueberries|50|

|Vegetables|Calories|
|---|---|
|romaine|30|
|green beans|40|
|squash|100|
|spinach|50|
|kale|10|

|Dairy|Calories|
|---|---|
|milk|300|
|yoghurt|200|
|cheddar cheese|200|
|skim milk|100|
|cottage cheese|80|

|Grains|Calories|
|---|---|
|bread|200|
|bagel|300|
|pita|250|
|naan|210|
|tortilla|120|

There will be a second list box, for the user selections. Between the two list boxes, there will be a button to add/ remove items from the selection list. Once the items for the category are populated, the user can click the button to add an item to the selection list.

* When you click an item in the first listbox (with the items you can add), the button will be configured to **add** the selected item to your selection list.
* When you click an item in your selection list, the button will be configured to **remove** an item from the selection list.
* The item that is added will appear in the selection list. As the item is added, the total amount of calories (total of all items in the selected items list) will be shown below the selection list.
* An item can be removed from the selected items list, and the calorie count will also update when an item is removed.
* The selected items list can hold any number of items, and can be a mix of items from all categories.

Place all the styles for the different display elements in your `.css` file. Place all your javascript code in your `.js` file.

Use the screenshots below as an additional reference for your web page design requirements.

### Grading

Points: 40 points total

Web Page and Actions:

* Pulldown menu selection: 5 points
* Populating listboxes: 5
* Headings, Layout & Alignment: 5
* Good coding style of css: 5
* Good coding style of javascript: 5
* Following all requirements: 15

### Sample Output

UI Specifications are often page mockups. Your page should be similar to this…

#### Sample Page 1

![nutrikit 1 sample 1](/images/client-project/nutrikit-1.0.jpg)

#### Sample Page 2: Add Item

![nutrikit 1 sample 2](/images/client-project/nutrikit-1.1.jpg)

#### Sample Page 3: Remove Item

![nutrikit 1 sample 3](/images/client-project/nutrikit-1.2.png)

## Client-2: Port to React

{{< snippet "/snippets/client-project/client2-overview.md" >}}

### Getting Started with React

{{< snippet "/snippets/client-project/client2-getting-started.md" >}}

### Porting to React

{{< snippet "/snippets/client-project/client2-porting.md" >}}

### Nutrikit Specifics

* Your state will likely be a collection of what the menu items are and which ones are selected.
* Your state would also likely need to store which category is currently selected. Perhaps that needs to be in the top-level state, or perhaps that’s a state variable for the component representing the menu

### Grading Client-2

{{< snippet "/snippets/client-project/client2-grading.md" >}}