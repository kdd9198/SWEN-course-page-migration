Please call your topic branch `db2-dev` and your final tag `db2`.

Our goal here is to add basic CRUD operations to our persistence API. In this iteration, you will be:

* Adding some more tables (if needed)
* Adding columns/ changing columns in existing tables (if needed)
* Implementing some baseline methods for doing CRUD operations on your data
* Add some useful search/ query methods

Remember, CRUD operations usually refer to a specific row. So need to ensure you identify the specific row uniquely.

*Keep your old unit tests* and update them accordingly.

We do not need CRUD for everything. In “real life”, you can usually come up with a reason to set up CRUD for every entity in your schema. That would be too repetitive for us. Focus on what we are asking for.

We also need to begin providing **reference documentation** for how to use these DB methods. We would like you to use the [Python Docstring methodology](https://peps.python.org/pep-0257/) for documenting your API methods. For each method in your API, you must include:

* A useful, single sentence about what the method does.
* Name of each argument, what it means, and any default value
* Access control assumptions you are making
* What is returned? (e.g. python dict? psycopg2 result set?)