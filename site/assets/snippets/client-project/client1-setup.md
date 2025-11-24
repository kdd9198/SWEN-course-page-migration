You will create a new branch (`dev-client-1`) in your gitlab group repo (`client-abc123`) which you created for Client-0. When you finish this project merge to master and apply a tag `client-1`. You will continue to use the gitlab pages as before. You will place your HTML code in `public/index-1.html` and add a `.css` file for styles (e.g. `clubs.css` or `nutrikit.css`) and a `.js` file for your javascript code.

{{% hint warning %}}

**NOTE:** To avoid conflict with `client-0` files, we are having you implement your HTML page for `client-1` in a different file i.e. `public/index-1.html`.

{{% /hint %}}

Use the same support file (`.gitlab-ci.yml`) from the prior project.

This CI file will publish your webpage (index.html) to the gitlab web server. You can find the URL (to check your webpage) on the `settings/pages` link in gitlab