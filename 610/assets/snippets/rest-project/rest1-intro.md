We will still be following the merge request and tagging pattern. Please tag your code as `rest1` on the master branch when it is merged.

In this initial iteration, we’re looking to get the basics working. We will build on the prior project, but instead of making direct DB SQL calls, we will build an API using REST, and your client code (your unit tests) will call the API to use the DB. This also means that you must initialize your DB (load the tables) from the server side (not from your client side unit tests). Review the setup code to see how this is done.

Take the data-sets you had in the DB project and use (or adapt) that as necessary for the REST project.