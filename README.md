# SWEN-course-page-migration
This is the project to migrate the course pages for the RIT Software Engineering Masters program classes from raw HTML to the Hugo framework.
Hugo uses a template system to allow for fast and easy additions or changes to a static site, allowing for improved maintainability. The process includes both updating outdated layouts to improve site flow, and the implementation of reusable components and templates to improve maintainability.
## Testing and Deployment
Hugo uses a series of layouts and content markdown files to create web pages. In order to see what the website looks like, you will need to have Hugo build the site on a local server. You can use either of the following console commands to build and start the server. Note that Windows user should not run commands in Command Prompt or Windows PowerShell.<br><br>
```hugo server -D``` or ```hugo server --buildDrafts```<br><br>
This will start a server that includes content that is flagged as a draft. If you don't want to include draft content, use ```hugo server``` instead.
In order to create the public facing web pages from the Hugo files, run the following command.<br><br>
```hugo --cleanDestinationDir```<br><br>
This will build, but not deploy, the site. Before building Hugo will delete any files from a previous build, ensuring the new build does not include outdated or draft content.
## Hugo documentation
The Hugo documentation can be found [here](https://gohugo.io/documentation/), and their Quick Start guide can be found [here](https://gohugo.io/getting-started/quick-start/).
## Migration Documentation
Documentation on the requirements and migration process for the 610 site can be found [here](https://www.overleaf.com/read/nryrccvpqkmk#06e431).
