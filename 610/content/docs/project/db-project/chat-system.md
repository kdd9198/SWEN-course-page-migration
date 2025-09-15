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

## DB 0: Setup

DB0 is the same for everyone, regardless of project.

For setting up in the lab or on your own machine, follow our [DB Project Setup Instructions](/docs/project/db-project).

### Grading DB0

* 10pts. All steps implemented
* 10pts. CI fully passes

{{% hint warning %}}

Grading notes:

* Make sure you tagged the commit as `db0` so we can find it easily.
* We grade GitLab only, unless an instructor or TA has given explicit written instructions that you can bypass the CI (which is rare)

{{% /hint %}}

## DB1: Initial Schema, Test Data Set

In this iteration, please name your topic branch `db1-dev`. Once you have merged this into the `master` branch, tag the version that you consider to be your submission with `db1`.

The main purposes of this twofold:

* Get your initial schema going
* Set up your test data for unit testing

Build a table in your database and populate it with some test data. We will be building this database schema incrementally, so let’s just start with two or three tables.

This iteration you will build some initial tables that relate to each other. Don’t worry about storing all the columns you can think of - just get the general concept of the table and its foreign/primary keys.

Generally speaking, you will not call SQL directly from your unittest code. Instead, you will have APIs that will do the heavy lifting for SQL. Your APIs will be methods in `src/` that will be called by your unittests. The APIs will make the calls to SQL (e.g. using `CREATE` and `SELECT` etc.). Keep your test data loading separate from the APIs in `src/` to keep **test code** and **production code** distinct. See your project domain for specifics.

We will give you test cases and you will need to adapt them into Python unit tests. You also must **add 3 additional tests** (i.e. `test_*` methods). You are welcome (encouraged!) to add to your test dataset too.

Lesson: ***Learn the value of deleting out of date code.*** Delete any trace of `example_table` from your code. We’re done with the example setup, so adapt your code accordingly. That code will live on in your repository history anyway. Don’t comment it out like a packrat. Delete. The sooner you get used to the idea of revising code instead of continually adding to it, the better your software will be on so many levels.

### Grading DB 1

By lab day:

* 5 pts. Set up merge request by lab day
* 10pts. Enough functionality finished such that it can be thoroughly reviewed

By submission day:

* 10pts. Directions followed. e.g. Example removed, git branch, merge, tag, etc.
* 10pts. Provided useful feedback to others (merge request feedback)
* 5pts. Responded to feedback on your own project
* 15pts. Test cases implemented
* 10pts. CI Succesfully runs
* 15pts. Overall spirit of the feature implemented

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