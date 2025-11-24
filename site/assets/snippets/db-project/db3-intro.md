Please call your topic branch `db3-dev` and your final tag `db3`. All lowercase, hyphenated.

We have the core of our system down and our development infrastructure set up. Now it’s time to accelerate on features.

First, it’s time for a **DTR:** Define The Relationships. After reviewing these features, we recommend you sit down and determine your relationships on a piece of paper. Some people like to use the notation from [Entity-Relationship Diagrams](https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model) - we will not require this of you. Boxes for tables and lines with arrows for foreign keys would suffice. Your “DTR” can be a picture of your hand-drawn diagram (but make sure it’s legible), or use any drawing tool to create a file. Make sure the name starts with **DTR.** If it’s a file, convert it to PDF, so we can read it. Add your document to your repo, and make sure it’s pushed to the repo, in the root of the directory.

**Key decision for everyone.** Continually ask yourself: “Should I do this in SQL or in Python?” Most things can be done in either. (Heck you can do inner joins in Python by doing nested loops, but… blech… don’t do that.) If your answer is “I know how to do it in Python but not SQL” - that’s a bad answer. If your answer is about what is simpler, more readable, maintainable, and performant - that’s a good answer. This project is a database API project, not just an SQL project.

**Keep Your Old Tests Passing!** These new features might involve revising past features. You must keep your old test cases running, but you may need to adapt them in spirit to these new features. It’s okay if you need to change your old test cases, as long as the spirit of the test remains.

Good luck! This might be a tough one. Don’t be afraid to scrap your schema design ideas when they don’t work. That’s why we do branches, unit tests, and merge requests.