---
title: 'Assignment 5: Secure Session Management Testing'
date: '2025-10-22T00:20:28-04:00'

weight: 6

draft: true
---

## Secure Session Management Testing

This homework makes you familiar with design and implementations of architectural tactics. An important goal of this assignment is to emphasize that designing architecture is important but implementing the design, testing and maintaining the design decisions are critical.

### Objectives

You are supposed to write test-cases for the “Secure Session Management” Tactic. The test-cases are focused on architecture breakers.

* Please implement this system as a group. Note: all teammates need to contribute and be at the group presentation for full credit. Peer evaluations will also be considered.

### Description

Web applications can create “sessions” to keep track of anonymous users after the very first user request. An example would be maintaining the user language preference. Additionally, web applications will make use of sessions once the user has authenticated. This ensures the ability to identify the user on any subsequent requests as well as being able to apply security access controls, authorized access to the user private data, and to increase the usability of the application. 

In this assignment, you are going to test critical aspects of your architectural tactics.

Please consider the following items:

1. Complete Assignment 4 – it will help you to use it for this assignment. 
2. Identify and discuss *four architecture breakers* in the secure session management tactic.
3. Using a testing framework, develop test cases for two of these breakers.
4. Refactor your code so you will have *one failed test*, and *one successful test*. In case of the failed test, *your code should have the architecture breaker* you discussed earlier. In case of the successful test, your code should not have that architecture breaker (or else the test would fail). For the remaining two breakers identified, your code may or may not have those breakers present.

**Note:** You can use the session management APIs of any existing library. This assignment requires you to implement authentication and authorization as well. You are allowed to use existing security frameworks.

**Constraints:** No limitation on programming languages or testing frameworks.

### Deliverables

* Runnable source code and test cases.
* Read me file including guidance on how to run the code and what it does, list of frameworks used.
* Documentation describing which (4) architecture breakers were identified and which (2) were tested. This may be contained within the readme or in a separate document, but it should be clear where this information is located. 
* Other documentations if necessary.

Some questions that may be asked:

* What are your four architecture breakers? Describe why/how.
* For your failed test, why did it fail? Can you show where your breaker was?
* For the passed test, why did it pass? How did you avoid the breaker?
* Does your code have the other two breakers?
* Is there a readme describing how to run the program?
* Does the readme describe what the program does?