# SWEN-course-page-migration

This is the project to migrate the course pages for the RIT Software Engineering Masters program classes from raw HTML to the Hugo framework. Hugo uses a template system to allow for fast and easy additions or changes to a static site, allowing for improved maintainability. The process includes both updating outdated layouts to improve site flow, and the implementation of reusable components and templates to improve maintainability.

## Adding new content pages

New content pages can be added by using the `hugo new content` command in the site's directory, including the target directory and name for the page content file. For example:

```
hugo new content topics/new-topic.md --kind topic
```

The above example will create a content file called `new-topic.md` in the `content/topics` directory using the site's `topic.md` archetype. Omitting `--kind topic` from the command will create the content file using the Book theme's default archetype instead

## Testing and Deployment

Hugo uses a series of layouts and content markdown files to create web pages. In order to see what the website looks like, you will need to have Hugo build the site on a local server. You can use either of the following console commands to build and start the server, run from indside the site's directory within the repo. Note that Windows user should not run commands in Command Prompt or Windows PowerShell.

```
hugo server -D
```
or
```
hugo server --buildDrafts
```

This will start a server that includes content that is flagged as a draft. If you don't want to include draft content, use `hugo server` instead.
In order to create the public facing web pages from the Hugo files, run the following command.<br>

```
hugo --cleanDestinationDir
```

This will build, but not deploy, the site. Before building Hugo will delete any files from a previous build, ensuring the new build does not include outdated or draft content.

## Further Documentation

The Hugo documentation can be found [here](https://gohugo.io/documentation/), and their Quick Start guide can be found [here](https://gohugo.io/getting-started/quick-start/).

more detailed ocumentation for the migration project itself is available [here](migration-documentation.md)