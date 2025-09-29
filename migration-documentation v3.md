# SWEN Course Migration

## Requirements

The first page being migrated to Hugo in order to explore the process is SWEN-610. The 610 site has 3 main pages available in the header navigation bar: Schedule, Syllabus, and Project. The Schedule page also functions as the site’s homepage, and contains the course schedule in a complex table. The majority of the pages and resources on the site are accessed from within the Schedule table. The Syllabus page contains the course information, and primarily consists of text with a few simple tables. The Project page contains a brief text description of the course project. The remaining pages fall under five main categories: Topics, Assignments, Projects, External Resources, and Downloadable Resources. Topic, Assignment, and Project pages all contain structurally similar content consisting primarily of text with some images or tables.

In summary, the site’s pages generally fall under the following types:

* The Schedule page, which also acts as the site’s homepage. This page consists primarily of a complex table containing the course schedule and links to assignment pages and resources.
* Text pages consist primarily of text with headers, links, and occasionally simple tables or images.
* External resources on other sites.
* Downloadable resources, such as .pptx files.

Topic pages and Project pages make up the bulk of the Text pages, but other single pages such as the Syllabus would also fall into this category. Text pages with tables should be able to easily construct their tables with markdown in their content pages, meaning that they do not need alternate layouts or the use of shortcodes.

None of the existing pages on the 610 site would make use of a Hugo list page. However, Hugo does make use of a list layout as one of the default layouts to fall back on. As such a simple list layout and archetype is needed as well. In this case, the layout is provided by the Book theme and could be used to construct a fifth List page category if needed (such as for a list of Topic pages).

## Hugo Components

### Content

Most of the pages on the site will be content markdown files organized into several subdirectories of the primary content directory. The book theme uses the content files in the “docs” directory to construct the site’s navigation menu, and so important pages such as the Syllabus and Project page will be in their own subdirectories within “docs.” Other types of content will be organized in their own subdirectories outside of the “docs” directory. Due to how the book theme functions, the primary content files of subdirectories within the “docs” directory will all be index.md files. This is necessary for the theme to recognize which is the main file of the directory and structure the navigation menu accordingly.

### Layouts

Layouts contain the html that defines the structure of different pages, and will be provided by the book theme. See the Theme subsection for more information.

### Partials

Partials allow small reusable sections of html to be included in a layout file, and will be provided by the book theme. See the Theme subsection for more information.

### Archetypes

Archetypes define the initial state of a newly created content file, allowing you to automatically fill out certain parts of the front matter or markdown content. The default single page archetype provided by the book theme is likely sufficient for many pages, such as project pages, as they are not similar enough in the structure of their content to make effective use of archetypes. However, a custom single page archetype will be used instead as it is useful for customizing commonly used front matter settings. There will also be an archetype for topic pages, as they all have similar structures.

### Resources

Internal resource files, such as .pptx files or images, will be stored in Hugo’s “static” directory.

### Shortcodes

Shortcodes allow small reusable sections of html to be included in a markdown file, and are mostly be provided by the book theme. See the Theme subsection for more shortcodes from the book theme.

In addition to the theme's shortcodes, there is one custome shortcode: "Snippet." This is a small and simple shortcode designed to render content from another content file (stored in the /assets/snippets directory) in a page's content. This allows for the reuse of section of content that are repeat in multiple locations, such as different versions of the same project. The Snippet shortcode takes a single parameter: the location of the content file used. For example: {{< snippet "/snippets/reused-content.md" >}}

### Theme

Currently the Book theme (found [here](https://github.com/alex-shpak/hugo-book)) is being used for the migrated 610 site. This provides the benefit of a high quality visual theme with pre-built support for several useful features such as asearch bar and auto-constructed tables of contents. In addition to the layouts for the site’s pages, the theme also provides several shortcodes to customize the content of markdown pages.

Shortcodes of note include:

* Column: allows markdown content to exist in side-by-side columns. This is primarily used in the Schedule page.
* Card: creates borders around content to help visually group related information.
* Hint: add colored backgrounds (with several color options) to sections of content in order to draw the reader’s attention.
* Steps: display a numbered list in a more visually appealing way than a standard numbered list.

The documentation for the book theme is split between the readme in the theme’s Git repo (linked above), or on the theme’s demo page (found [here](https://hugo-book-demo.netlify.app/docs/example/)).

If the existing style of a site is kept, or if the Book theme proves too difficult to maintain, a new custom theme will be needed. This would require additional steps in the migration process. First, the site’s existing css would need to be migrated into the Hugo custom theme’s assets directory. Then layouts for each type of content would need to be constructed (currently just for the index and single pages). Partials for the head, header, and footer would also need to be constructed for the new layouts. Custom Shortcodes would need to be developed as the need for them arises as well.

## Hugo File Structure

The site’s files will be divided between the site’s main directories and the Book
theme’s directories. For a visual representation of the file structure, see the diagram below

* Archetypes: 610/archetypes
* Content: 610/content
    * pages included in the site navigation will be in subdirectories in the /docs subdirectory.
    * other content pages will be in their own subdirectories such as /assignments
* Resource Files: 610/static
* Custom Shortcodes: 610/layouts/shortcodes
* Resuable Content: 610/assets/snippets
* Layouts: 610/themes/book/layouts
* Partials: 610/themes/book/layouts/partials
* Shortcodes: 610/themes/book/layouts/shortcodes

### File Structure Diagram

```
Key: [multiple directories], (multiple files)

610
|---archetypes
|   |---single.md
|   |---topic.md
|---assets
|   |---snippets
|       |---[projects]
|          |---(reuable content section).md
|---content
|   |---assignments
|   |   |---(assignment).md
|   |---docs
|   |   |---project
|   |   |   |---[projects]
|   |   |   |   |---(project page).md
|   |   |   |---index.md
|   |   |   |---(universal project page).md
|   |   |---syllabus
|   |   |   |---index.md
|   |   |   |---codes-review.md
|   |   |   |---expectations.md
|   |   |---resources.md
|   |---topics
|   |   |---(topic page).md
|   |---index.md
|   |---git-resources.md
|---layouts
|   |---shorcodes
|       |---snippet.html
|---static
|   |---data
|   |   |---(data file).csv
|   |---documents
|   |   |---(document).docx
|   |---images
|   |   |---(image).png
|   |---slides
|       |---(slides).pptx
|---themes
    |---book
        |---[book directories]
            |---(book files)
```

## Migration

For most pages, the migration process is very simple. It is usually just a matter of taking the content from the existing page and converting it into markdown inside of the page's content file in the content directory. However, complex (or large) tables will generally need to be replaced with an alternative layout. Shortcodes are very useful for this, as they allow a degree of additional control over the style ofthe page. Examples of a few shortcodes can be found below. For more information these shortcodes, or other useful shortcodes such as Steps, see the documentation for the book theme (linked above).

### Hint

Especially useful for drawing student's attention to due dates, adding emphasis to important instructions on a project, or highlighting important information such as academic integrity rules on the syllabus. Here is an example of using it to highlight that something is due on the schedule

```markdown
### Week 3

#### 9/7 - 9/12

{{% hint warning %}}

Assignment 2 due Tuesday

{{% /hint %}}
```

### Columns

The Column shortcode allows you to seperate your content in 2 or 3 columns, while structuring it as a list in markdown for conveniece. This shortcode will likely be needed when converting larger or more complex tables to markdown.

```markdown
{{% columns $}}

- Topics
    * Monday
    * Tuesday
    * Wednesday

- Readings
    * Chapter 3

- Assignments
    * Assignment 3
    * Project 1

{{% /columns %}}
```

### Card

the Card has several features, but the simplest use is to add a border around content in order to clearly group related content togeather.

```markdown
{{% card %}}

First paragraph

Second related paragraph

thrid related paragraph

{{% /card %}}
```

### Example Week in a Schedule page

```markdown
## Week 3

#### 9/7 - 9/12

{{% hint warning %}}

Assignment 2 due Tuesday

{{% /hint %}}

{{% card %}}
{{% columns $}}

- Topics
    * Monday
    * Tuesday
    * Wednesday

- Readings
    * Chapter 3

- Assignments
    * Assignment 3
    * Project 1

{{% /columns %}}
{{% /card %}}
```