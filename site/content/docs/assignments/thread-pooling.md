---
title: 'Assignment 3: Thread Pooling'
date: '2025-10-22T00:19:24-04:00'

weight: 4

draft: true
---

## Thread Pooling

This homework makes you familiar with design and implementations of architectural tactics. An important goal of this assignment is to emphasize that designing architecture is important but implementing the design, testing and maintaining the design decisions are critical.

### Objectives

You are supposed to implement the “thread pooling” tactic. The implementation is minimum prototyping of the tactic than full implementation of a system.

*A thread pool is a managed collection of threads that are available to perform tasks. Thread pools usually provide improved performance when executing large numbers of tasks due to reduced per-task invocation overhead.*

Please consider the following items:

1. Select a domain.
2. Develop a **performance**-critical task (with minimum functionality).
3. Create a pool of threads to accomplish that performance critical task.
4. Pool size should be 10 threads. 
5. Please develop any hypothetical task (preferably one that you can explain possible real-world usage of). Examples could be (but are not limited to): “the usage of threads to sum up a large array of integers in parallel,” “generating all the odd/even numbers less that a given particular number,” “searching for a particular number within a large dataset,” “processing files,” “crawling web-content,” or “generating prime numbers.”
6. Make sure your task is time-consuming and it would take more than 10 threads to accomplish it. If one thread performs its task, it should be reused for the next piece of work.

**Constraints:** Languages limited to Java, C#. You can use the existing frameworks or implement from scratch. You are to work in a team. Peer-evaluations will be collected and may affect your score. 

### Deliverables

* Runnable Source Code 
* Read me file including guidance on how to run the code, what the code does, and a list of frameworks used
* Documentations if necessary

These are some questions you should be able to answer when presenting your assignment. Reminder: all group members need to present.

* What is your domain?
* What is the task you are performing?
* Why does it take long?
* How do you split work among the various threads?
* How do you deal with individual threads finishing their original tasks?
* How much faster is the task performed with 10 threads vs 1? (If you cannot perform the task with 1 thread due to it taking too long, this is ok)
* How long does it take the task to complete?
* Is there a readme describing how to run the program?
* Does the readme describe what the program does?