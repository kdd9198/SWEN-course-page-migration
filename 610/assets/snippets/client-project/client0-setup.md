{{% steps %}}

1. Locate your project in your group (Named `client-group-x`) in gitlab, and clone the project

2. Once you clone this project, create a folder named `public`. All your code for this assignment will go in this folder.

3. Inside `public/` create a file, and name it `index.html` - Your web markup (html) will go in this file (You can use the template below to get started)

    ```html
    <!doctype html>
    <html lang="en">
    <head>
    <meta charset="utf-8">
    <title>Web Assignment 0</title>
    <meta name="description" content="First web assignment">
    <meta name="author" content="student name">
    </head>
    <body>
    </body>
    </html>
    ```

4. In the root directory, create a `.gitlab-ci.yml` file with this content:

    ```yaml
    image:
    name: node:18 #No special docker image.  Standard nodejs image from dockerhub
    cache:
    paths:
    - node_modules/
    before_script:
    - yarn install
    - node --version
    pages:
    stage: deploy
    script:
        - ls -lFa public
    artifacts:
        paths:
        - public
    ```

    This CI file will publish your webpage (index.html) to the gitlab web server. You can find the URL (to check your webpage) on the `settings/pages` link in gitlab

{{% /steps %}}