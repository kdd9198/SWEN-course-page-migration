---
title: 'Chat System'
date: '2025-09-15T00:10:41-04:00'

weight: 100
bookToC: true
bookSearchExclude: false

draft: true
---

## DB Project - Chat System

You are running a chat system (like Slack, Discord, Teams, …). Messages are sent to various channels within a team. Direct messages can be sent as well. The chat system has concept of threading, where you can respond to a specific message instead of a message to the whole channel. Notifications are sent to users who are mentioned.

## DB Design & Style Expectations

Be sure to check out our [expectations page](/docs/syllabus/expectations). Be sure to consult these when you are trying to think of helpful feedback.

## DB0: Setup

{{< snippet "snippets/db0-setup" >}}

### Grading DB0

{{< snippet "snippets/db0-grading" >}}

## DB1: Initial Schema, Test Data Set

{{< snippet "snippets/db1-intro" >}}

### Grading DB1

{{< snippet "snippets/db1-grading" >}}

### Feature Overview

* You will have users, users will have a username, some basic contact information.
* Users can be suspended, and there will be an expiration time for the supension
    * Suspension is a ‘global’ effect. A suspended user could login, for example, but would be prevented from posting or otherwise participating until the suspension is lifted.
* Users can chat with other users
    * All chats are simple text (i.e. text only, no graphics)
    * Each message is tracked, timestamped, and is marked as “unread” initially
* A user should be able call the API and get a count of the number of unread messages sent to them
* A user should be able call the API and get the messages sent between them and another person

### Key Decisions

* How will you model a message from one person to another?
* What is the most efficient way of storing messages?
* How will you test against timestamps when the current timestamp is never the same?

### Test Data Seeds

You will need to maintain a set of test data to seed your database before every test. This can take multiple forms, such as:

* A SQL file with many `INSERT` statements
* A hardcoded Python file calling SQL commands

How you do this is up to you. You are welcome to add more data than what we ask for any tests you write.

* Abbott, Costello, Moe, Larry, Curly are users in the system
* Messages between users
    * Include messages with dates ranging from 1922 to 1970
    * Some of those messages are marked as “read”, others “unread”
* Larry is currently suspended until the year 2060
* Curly was suspended for the 1990s

### Test Case Sketches

Adapt the following scenarios into automated tests. The number of different tests, and how you organize them, is up to you.

* The database is seeded with a test data set without crashing
* We can get all the messages between Abbott and Costello for all time.
* We can get all the messages between Moe and Larry during the year 1995
* The number of unread messages to Abbott is correct
* If today is May 4, 2012, then Larry is suspended
* If today is February 29, 2000, Curly is not suspended

{{% hint warning %}}

**Note:** make sure your tests are actually making calls to your API, not just directly to the database. Data will be seeded directly, but your tests will be testing the API. For example, there should be an API method for “We can get all the messages…” and we call that.

{{%  /hint %}}

### Not Necessary (yet)

For this iteration, you do NOT need to implement:

* An API call for creating a new user
* An API call for (un)suspending a user
* An API call for sending a new message

You will need to do these in the future, but for now just test against your pre-seeded test data.

## DB2: CRUD & Design Iteration

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

### Grading DB2

By lab day:

* Set up merge request by lab day (5 pts)
* Enough functionality finished such that it can be thoroughly reviewed (5 pts)

By submission day:

* Directions followed. e.g. Example removed, git branch/ tag, etc. (5 pts)
* Provided useful feedback to others (merge request feedback) (5 pts)
* Responded to feedback on your own project (merge request) (5 pts)
* Requirements implemented (20 pts)
* CI Succesfully runs (5 pts)
* Documentation complete (10 pts)
* Test cases implemented and pass (20 pts)

### DB2 Chat: New Requirements

In this iteration, you will add:

* Send a new message to another user
* Viewing the conversation between two users
* Getting a list of users you have gotten a message from, and how many unread message you have
* Marking a message as “read”
* Changing your username, but if you do change your username then you cannot change it again for another six months.
* Handling account suspensions. (Suspend a user; clear a suspension)
* Import test data from the provided [csv file](/downloads/csv/whos_on_first.csv) and add to the database.
    * This contains a chat session between Abbott and Costello discussing ‘Who’s on first’
    * NOTE: You will need to read the data and figure out a way to make it fit according to your DB schema (or do you need to modify your schema?). There can be inconsistencies in data format, some stray characters etc. Think through how to import this data using code, in a consistent, logical way.

**A note about timestamps and APIs.** In this project, we ask that your APIs allow for setting timestamps, which makes our testing setup easier. In practice, a more common approach is to have the database be the source of generating timestamps. For example, if we send a new message, then the database would set the current timestamp using the `CURRENT_DATE` (see [Postgresql docs](https://www.postgresql.org/docs/17/functions-datetime.html#FUNCTIONS-DATETIME-CURRENT)) or something similar. To make your tests repeatable, web engineers have library calls that can make the system “pretend” the current time is what we expect in our test data. An example of this is the [travel_to](https://edgeapi.rubyonrails.org/classes/ActiveSupport/Testing/TimeHelpers.html) method in Ruby on Rails, [with a good explanation here](https://guides.rubyonrails.org/testing.html#testing-time-dependent-code). For us, rather than bringing in more libraries, you can just provide the timestamp in your API and assume that the front-end developer will get the proper times.

### Test Case Sketches

{{% hint warning %}}

**Note.** These scenarios will likely need several separate test cases. That is, you will need to verify the data at the end of each step.

{{% /hint %}}

Let’s test the flow of sending messages.

Add the user with the username `DrMarvin` to your test data. His account was created on May 16, 1991.

1. Create a new user, username `Bob`, with all required fields, on May 17, 1991.
2. Bob sends a message to `DrMarvin`, saying “I’m doing the work, I’m baby-stepping” on May 18, 1991.
3. Bob attempts to change his username to `BabySteps2Door` on May 19, 1991. This operation succeeds.
4. Bob tries to change his username to `BabySteps2Elevator` on May 20th, 1991. This fails because of the six month rule.
5. When `DrMarvin` checks his messages, he should have one unread from `BabySteps2Door`.
6. The user `DrMarvin` reads the message from `BabySteps2Door`.

Now, let’s test suspension:

1. Try to send a message from Larry on May 5, 2012, and it should fail. The API method should provide in its error message listing the time for when the suspension ends.
2. Assuming that it is May 5, 2012, un-suspend Larry, then send another message, and confirm it is successful.

Let’s test our data import:

* All of the messages from the import should be marked as “unread”.

### Key Questions

* How will you accomplish parsing a csv file input and insert it into your database?
* Should the number of unread messages be a number you store somewhere, or calculate on every API call?
* How can you get the number of unread messages from users in a single SQL query?
* How will the system know the last time you changed your username?
* How should you check for the suspension validity (i.e. messages can/ cannot be sent)

## DB3: Expanding Your Schema

Please call your topic branch `db3-dev` and your final tag `db3`. All lowercase, hyphenated.

We have the core of our system down and our development infrastructure set up. Now it’s time to accelerate on features.

First, it’s time for a **DTR:** Define The Relationships. After reviewing these features, we recommend you sit down and determine your relationships on a piece of paper. Some people like to use the notation from [Entity-Relationship Diagrams](https://en.wikipedia.org/wiki/Entity%E2%80%93relationship_model) - we will not require this of you. Boxes for tables and lines with arrows for foreign keys would suffice. Your “DTR” can be a picture of your hand-drawn diagram (but make sure it’s legible), or use any drawing tool to create a file. Make sure the name starts with **DTR.** If it’s a file, convert it to PDF, so we can read it. Add your document to your repo, and make sure it’s pushed to the repo, in the root of the directory.

**Key decision for everyone.** Continually ask yourself: “Should I do this in SQL or in Python?” Most things can be done in either. (Heck you can do inner joins in Python by doing nested loops, but… blech… don’t do that.) If your answer is “I know how to do it in Python but not SQL” - that’s a bad answer. If your answer is about what is simpler, more readable, maintainable, and performant - that’s a good answer. This project is a database API project, not just an SQL project.

**Keep Your Old Tests Passing!** These new features might involve revising past features. You must keep your old test cases running, but you may need to adapt them in spirit to these new features. It’s okay if you need to change your old test cases, as long as the spirit of the test remains.

Good luck! This might be a tough one. Don’t be afraid to scrap your schema design ideas when they don’t work. That’s why we do branches, unit tests, and merge requests.

### Grading DB3

By lab day:

* Set up merge request by lab day (5 pts)
* Enough functionality finished such that it can be thoroughly reviewed (5 pts)

By submission day:

* Directions followed. e.g.git branch/ tag, etc. (5 pts)
* Provided useful feedback to others (merge request feedback) (5 pts)
* Responded to feedback on your own project (merge request) (5 pts)
* Requirements implemented (20 pts)
* CI Succesfully runs (5 pts)
* Documentation/ DTR complete (10 pts)
* Test cases implemented and pass (20 pts)

### DB3 Chat: New Features

These features likely involve revising your existing implementation.

* **Channels and communities.** A user can be a member of any number of communities. Communities have channels that you can post to. We need the API to allow joining and leaving a community.
* **Direct messages.** As before, you should be able to send a message to another user, regardless of community or channel.
* **Unread counts.** The API should be able to provide unread counts for any user at the community, channel, and direct message level.
* **Suspensions.** The concept of a suspension applies only to a *community*. A user can be suspended in one community and not another.
* **Mentions.** We need the API to be able to list any messages across all communities that has the given username mentioned with the `@` symbol.

### Test Data

Use the appropriate test data to match the test case you are running …

* We have a `Arrakis` community with channels `#Worms` and a `#Random`
* We have a `Comedy` community with with the channels `#ArgumentClinic` and `#Dialogs`
* Every user of our test data prior to this is now a member of `Comedy`, but not `Arrakis`
* The `Arrakis` community has the user `spicelover`
* The users `Paul` and `Moe` have some direct messages. (You can pre-populate this data to help with the test cases below). Obviously, use this test data *after* you create the user(s).

### Test Case Sketches

In each test scenario, peform the action(s), then validate that the DB is correctly updated after the action(s)

* Create a new user called `Paul`.
* `Paul` joins the `Arrakis` community.
* `Paul` sends a message to the `#Worms` channel. The API returns the correct unread counts for `spicelover` reflecting this.
* `Paul` sends another message to the `#Worms` channel and mentions `@spicelover`. The Mentions API returns the correct list of messages that mention `spicelover`.
* User `Moe` mentions `@spicelover` in `Comedy`, but `spicelover` is NOT a member of `Comedy`, so the **Mentions** API does NOT include this message in its results.
* The user `Paul` gets suspended from `Arrakis`. He attempts to send a message, but the message fails. He then joins `Comedy` and is able to send a message still.
* Find the total number of DMs between `Paul` and `Moe`

### Key Decisions

* How should direct messages be implemented with the new communities and channels? Maybe a “DM” community that everyone is enrolled in? Or a separate table?
* Do you need new API calls for unread counts? Or revise old ones?

### Not Necessary

* A user *does not* need to be a member of a *channel* (like Slack). If you are in a community, you can post to any channel.
* Assume that the community and channels are pre-existing, so we do *not* need a “create community” or “create channel”.
* We don’t have the concept of Moderators, so assume that anyone who is calling these APIs have permission to do so.

## DB4: Analytics

### Grading DB4

By lab day:

* Set up merge request by lab day (5 pts)
* Enough functionality finished such that it can be thoroughly reviewed (5 pts)

By submission day:

* Directions followed. e.g. Example removed, git branch/ tag, etc. (5 pts)
* Provided useful feedback to others (merge request feedback) (5 pts)
* Responded to feedback on your own project (merge request) (5 pts)
* Requirements implemented (20 pts)
* CI Succesfully runs (5 pts)
* Documentation complete (10 pts)
* Test cases implemented and pass (20 pts)

### DB4 Chat: New Features

* **Full-text search query** using PostgreSQL’s `tsvector` and `tsquery`. You should be able to search all messages in a community using a flexible natural language-aware search engine.
    * [You can read all about how to use it](https://www.postgresql.org/docs/17/textsearch-tables.html#TEXTSEARCH-TABLES-SEARCH), but it does some basic stemming to allow for plurals, contractions, etc.
    * Here’s an example of an SQL query that uses the engine to search the `content` column of the `messages` table for the word `automatically`: `SELECT * FROM messages WHERE to_tsvector(content) @@ to_tsquery('automatically')`. Of course, you’ll need to adapt this to your schema and design.
    * The `to_tsquery` doesn’t allow for spaces for multiple search terms, e.g. `'apples oranges`. Thus, you will need to split the query by whitespace and place an “and” operator in there, e.g. `apples & oranges`.
* **Activity Summary:** give a breakdown of communities and the following metrics:
    * The average number of messages (per day) that had more than 5 characters in the 30 days prior to a given date, and
    * The number of different users who have sent a message that had more than 5 characters in the 30 days prior to a given date
* **Moderator Query:** list all users who have sent a message in a given date range who are currently suspended from any community.
* **Future Plan.** Create a file called FUTURE.md in the root of your repository. Using [Markdown syntax](https://www.markdownguide.org/basic-syntax/), provide written answers to the following:
    * In the future, if we were to add the ability to have `reactions` to your system, what would need to change? For example, someone can give a “thumbs up” to your message
        * What tables need changing and/or adding?
        * What API methods would you provide?
        * How might existing API methods change?
    * In the future, if we were to add the ability to have `threaded conversations` to your system, what would need to change? For example, a message in a channel can be a response to a specific message.
        * What tables need changing and/or adding?
        * What API methods would you provide?
        * How might existing API methods change?

### Test Data

* Two messages have the text:
    * “please reply”
    * “i replied already!”
* `Paul` is suspended from the `Arrakis` community

### Test Case Sketches

In each test case, print the results of the test as well as any test assertions.

* Given a search string of `"reply"`, both messages “please reply” and “i replied already!” are returned.
* Given a search string of `"reply please"`, only the message with the content “please reply” is returned (i.e. the terms must be combined with an AND operator)
* The list of users suspended from the `Arrakis` community include `Paul`
* An activity summary API call returns a summary of messages and users in a community that looks like this table. Your data may result in different numbers.

|`community`|`avg_num_messages`|`active_users`|
|---|---|---|
|Arrakis|5.2|4|
|Comedy|1.3|2|

In Python, that would look like:

```python
[
  {'community': 'Arrakis', avg_num_messages: '5.2', active_users: '4'},
  {'community': 'Comedy', avg_num_messages: '1.3', active_users: '2'}
]
```