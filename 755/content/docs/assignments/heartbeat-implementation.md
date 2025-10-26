---
title: 'Assignment 1: Heartbeat Implementation'
date: '2025-10-22T00:18:30-04:00'

weight: 2

draft: true
---

## Heartbeat Implementation

This homework makes you familiar with design and implementations of architectural tactics. An important goal of this assignment is to emphasize that designing architecture is important but implementing the design, testing and maintaining the design decisions are critical.

### Objectives

You are supposed to implement the “heartbeat” tactic. The implementation is a minimum prototyping of the tactic than full implementation of a system.

Please consider the following items:

1. Select a domain.
2. Develop a critical process (with minimum functionality).
3. Design a non-deterministic failure in this process which makes it crash.
4. Implement heartbeat to monitor the process.
5. Your heartbeat implementation should have all the required fault detection features.

**Rule 1:** Do not embed a failure in a static if statement. The failure must be random, and it must cause the process to crash, avoid making the process sleep.

**Rule 2:** Implement send/receive/monitoring functions on different processes.

**Rule 3:** Select a relevant domain: Monitoring connections, monitoring process, ...

**Constraints:** Languages are limited to Java or C#. You can use the existing frameworks or implement from scratch.

### Deliverables

* Runnable source code
* Readme file including guidance on how to run the code, list of any frameworks used
* Any other documentations, if necessary

When presenting your assignment, here are some questions that might be asked:

* Demonstrate that the program works.
* Which language did you use?
* What makes your crash non-deterministic? Can you demonstrate that the crash is non-deterministic?
* Can you demonstrate that the sender and receiver are on different processes?
* What is your chosen domain?
* Can you demonstrate the crash? If no, why?
* Is there a readme describing how to run the program?
* Does the readme describe what the program does?
* Did you use any existing frameworks? If yes, which ones?
* Do you have any additional documentation?