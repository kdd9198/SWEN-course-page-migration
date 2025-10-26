---
title: 'Assignment 2: Fault Recovery'
date: '2025-10-22T00:19:04-04:00'

weight: 3

draft: true
---

## Fault Recovery

This homework makes you familiar with design and implementations of architectural tactics. An important goal of this assignment is to emphasize that designing architecture is important but implementing the design, testing and maintaining the design decisions are critical.

### Objectives

You are supposed to implement a “fault recovery” tactic in form of active or passive redundancy. The implementation is minimum prototyping of the tactic than full implementation of a system.

The following should be accomplished as a pre-requisite (see Assignment 1):

1. Select a domain.
2. Develop a critical process (with minimum functionality).
3. Design a non-deterministic failure in this process which makes it crash.
4. Implement heartbeat to monitor the process.

**Your Fault Recovery implementation should have all the required fault detection (heartbeat in this case) and recovery features.**

**Rule 1:** Implement active/passive replicas on different processes.

**Rule 2:** In case of Passive redundancy, use checkpointing. In case of active redundancy, synchronize two replicas on the operations performed by each of them.

**Rule 3:** Make sure your fault detection first works as it should, then integrate the fault recovery with your code in assignment 1.

**Constraints:** Languages are limited to Java or C#. You can use the existing frameworks or implement from scratch.

### Deliverables

* Runnable source code 
* Readme file including guidance on how to run the code, list of any frameworks used
* Any other documentations, if necessary

These are some questions you should be able to answer when presenting your assignment.

* Have you implemented passive or active redundancy?
* Can you explain what makes it passive/active?
    * [if passive] Can you explain your checkpointing implementation?
    * [if active] Can you explain how you synchronized your replicas?
* What triggers the fault recovery process?
* Did you have to make any changes to the original heartbeat implementations? If yes, what?
    * Why did you make changes?
* Is there a readme describing how to run the program?
* Does the readme describe what the program does?