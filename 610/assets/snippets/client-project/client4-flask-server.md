To make sure your Client can talk to your Server, we need to make some changes to avoid CORS errors.

You will need to add a new module for the Flask server.

* Type `pip install flask_cors` on the command line (`pip3` for Mac).
* This will enable the Nodejs server to make API calls to another server (the Flask server) without CORS errors.

You will see some additional code in `server.py` in the provided skeleton code. (Review this for your understanding)

```
app = Flask(__name__) #create Flask instance  

CORS(app) #Enable CORS for Flask  

api = Api(app) #api router
```

As before, run your API (Flask) server by typing `py server/server.py`. You need to start up the Flask server before running your React client.