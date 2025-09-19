* **Calling the endpoints**
    * Make sure you call the endpoints in your javascript code with the full URL http://localhost:5000 (do not use a relative path to the endpoint)
* **Mac Users**
    * If you needed to change Flask previously (in REST) to run on a different port (e.g. 4999), then you will need to do that again when making the API calls.
    * Similarly, if you needed to use 127.0.0.1 instead of localhost, do that.
* **Running the web page server**
    * We have a backend server with Flask, but now we will also be running the front end web server for the React pages. Use a separate console window and type npm start to run the Nodejs server and bring up your web pages.
        * This will run your web pages on port 3000.