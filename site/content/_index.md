---
title: "Schedule"

draft: true
---

## SWEN-777 - Software Quality Assurance

* **Instructor:** [Xueling Zhang](https://www.rit.edu/directory/xxzvse-xueling-zhang/)
* **Email:** xueling.zhang@rit.edu
* **Class Time:** Tues/Thur 12:30am - 1:45pm
* **Location:** GOL 1640
* **Office hours:** Tues/Thur 11:00am - 12:00pm (Office Location: GOL 1527, Slack and Email)
* **TA:** Love Jayesh Ahir;   Office hours: Wed 12:00pm – 2:00pm (Zoom, Slack and Email: la3679@rit.edu)
* **Slack workspace:** [SWEN-777-01-2251](https://rit-swen-777-01-2251.slack.com/)
* **Slides:** [Google Drive - slides](https://drive.google.com/drive/folders/1rCuAHZv_QZzmgdT4uGOxfTCIIzzvcGOr?usp=drive_link)
* **Research Paper Form:** [Research Paper Form](https://docs.google.com/forms/d/e/1FAIpQLSdYYtAtpWRebOpp2TCmpdtLX5F_-kOjK_1Bfd--H09fWx-klw/viewform?usp=sharing&ouid=112919565505841639048)
* **Other resources:** [Google Drive](https://drive.google.com/drive/folders/15aNcCHyJVO0odSOZj-tHpsElHS4gFAgp?usp=drive_link)

### Course Overview

This course provides an exploration of software testing methodologies and the integration of research into enhancing software quality. Topics covered include software testing approaches such as functional / non-functional testing, structural testing, test case generation, and bug report management. You will gain knowledge in test planning and test case design, equipping you with the skills to develop robust testing strategies. Additionally, the course delves into the culture of software research, highlighting how this research supports and advances software quality. You will explore how research methodologies contribute to effective software testing and quality improvement. By the end of the course, students will be able to:

* Understand and apply a variety of software testing approaches and techniques.
* Develop and implement effective test case generation strategies and manage bug reports to ensure high software quality.
* Analyze and utilize software research methodologies to support and improve testing practices and software quality.
* Comprehend, evaluate, and communicate research findings, contributing to informed discussions and advancements in the field.

### Tentative Schedule

{{% flex-table advanced-cols="4em 4em 1fr 2fr" width="100%" title="schedule" headings="Week;Dates;Lectures;Due" %}}
- * Week
  * Dates
  * Lectures / Activities / Papers
  * Due (by the end of the week)
- * 1
  * 8/26, 8/28
  * Course Overview

    Why Software Quality Matters?

    Software Quality Models and Metrics
  * None
- * 2
  * 9/2, 9/4
  * Software Testing Overview

    Unit Testing
  * **Project Proposal & Setup**

    **Deliverables:**

    * Form teams (2–3 members).
    * Choose an open-source project from the [Project List](https://docs.google.com/spreadsheets/d/1ldMz1ZEdpZTpil4Ce6Uwkzh2sqGgTW-AWSozHSVqTxs/edit?usp=sharing).
    * Fork it into your own GitHub repo.
    * Add the instructor (xxzvse@rit.edu) and the TA (la3679@rit.edu) as collaborators to your repo.
    * Write code to collect the metrics (Maintainability, Testability) and place it in `courseProjectCode/Metrics/`. Include a README in courseProjectCode/Metrics/ that explains how to run the code to reproduce the results in your report.
    * Write a 1–2 page project proposal (`courseProjectDocs/project-proposal.md`) describing:
      * Project Overview
      * Key Quality Metrics

    **Workflow:**

    Create a “Project Proposal” PR into your team’s main branch. Have teammates review the PR. Once reviewed, merge it into main
- * 3
  * 9/9, 9/11
  * Unit Testing - Test Doubles

    * [Unit Testing In-Class Activity](docs/python-test-doubles)

    Higher Level Testing: Integration/System testing/GUI Testing

    * [GUI Testing In-Class Activity](/docs/gui-testing-monkey)
  * **[Requirements & Test Oracles](https://docs.google.com/document/d/1Mq_9cZefC0xHg-8aumVSJ2zzyKj7ugIYnNf4k034XPQ/edit?usp=sharing)**

    **Deliverables:**

    * Extract functional and non-functional requirements from:
      * README
      * Documentation
      * Code comments
    * Identify test oracles or assumptions for system behavior.
    * Document in: `courseProjectDocs/requirements-and-oracles.md`.
    
    **Workflow:**

    Submit as PR to team repo, get peer review from team members before merge.
- * 4
  * 9/16, 9/18
  * Test Coverage - Code Coverage

    * [Code Coverage In-Class Activity](/docs/python-calculator)
  * **Baseline Build & Test**

    **Deliverables:**

    * Build the project locally.
    * Run any existing automated tests; record results and coverage report.
    * upoload `testResults` and `testCoverage` (file type could be html, pdf, or screenshots depends on your test framework) under `courseProjectDocs/Setup/`.
    * Include a README in `courseProjectDocs/Setup/` that explains how to run the tests to reproduce your `testResults` and `testCoverage`.
    * Document your environment setup in `courseProjectDocs/Setup/report.md`.
      * Test suite summary (unit/integration/system/UI if present)
      * Baseline coverage metrics (at least unit testing) and observations
        * Number of tests run, passed, failed
        * Coverage summary (e.g.,statement coverage, branch coverage if available)
        * Readme (e.g., “UI code not covered by tests”) – – Observations (e.g., “UI code not covered by tests”)

    **Workflow:**

    Submit PR includes document, testResults and testCoverage, and merge
- * 5
  * 9/23, 9/25
  * Test Coverage - Input Coverage 

    * [Input Coverage In-Class Activity](/docs/input-coverage)

    Non-Functional Testing - Security Testing
  * **Unit Testing I (Extend Coverage)**

    **Deliverables:**

    * Add at least 5 meaningful unit test cases (per student) for uncovered or edge-case logic.
    * Use a unit testing framework relevant to the project’s language (JUnit, pytest, Jest, etc.).
    * Include a README in `courseProjectDocs/Unit-Testing/` that explains how to run the added tests to reproduce your testResults.
    * Update coverage report.
    * Document in `courseProjectDocs/Unit-Testing/report.md`:
      * New test cases & rationale
      * New Test results: number of tests run, passed, failed.
      * Coverage improvement analysis (compare with Baseline)

    **Workflow:**

    PR with added tests, updated test coverage, and report, get peer review from team members before merge.
- * 6
  * 9/30, 10/2
  * Non-Functional Testing - Performance Testing

    * [Performance Testing In-Class Activity](/docs/android-performance-testing)

    Bug Report Management
  * **Unit Testing II (Mocking & Stubbing)**

    **Deliverables:**

    * Identify at least 1 component (per student) that can benefit from mocking/stubbing (e.g., database, API calls).
    * Implement unit tests using mocks/stubs.
    * Update the README in `courseProjectDocs/Unit-Testing/` to include instructions on how to run the added tests to reproduce your testResults.
    * Update coverage report.
    * Document mock design decisions in `courseProjectDocs/Unit-Testing/mocking.md`:
      * New test cases & rationale
      * Mocking strategy
      * Coverage improvement analysis

    **Workflow:**

    PR with added tests, updated test coverage, and report, get peer review from team members before merge.
- * 7
  * 10/7, 10/9
  * Project presentation - 1

    Midterm Exam Review
  * **Project Checkpoint**

    **Deliverables:**

    Short 5–7 min team presentation:
      * Project overview
      * Key quality improvements made
      * Testing coverage progress

    **Workflow:**

    Submit your slides to [Project Checkpoint](https://drive.google.com/drive/folders/14qgn5gHBzvzN2Oked2vNhKUJQH6xTPQL?usp=drive_link)
- * 8
  * 10/14, 10/16
  * Fall Break - No Classes on 10/14
    
    **Midterm Exam on 10/16**
  * Select your paper to present
  
    [Reading list](https://docs.google.com/spreadsheets/u/1/d/1VEckw7N4O3f7P4-J6NevQj8imvmwiPViqimHcV4dIP0/edit)
- * 9
  * 10/21, 10/23
  * Project presentation - 2
    
    * Paper 1
    * Paper 2
    * Paper 3
    * Paper 4
  * **Mutation Testing**

    **Deliverables:**

    * Run a mutation testing tool (e.g., PIT for Java, mutmut for Python, Stryker for JS).
    * Improve tests to kill more mutants.
    * Submit report (`courseProjectDocs/mutation-testing.md`):
      * Mutation score report
      * Mutants survived/killed & lessons learned

    **Workflow:**

    PR with mutation report + changes to tests, and merger.
- * 10
  * 10/28, 10/30
  * * Paper 5
    * Paper 6
    * Paper 7
    * Paper 8
  * **Static Analysis & Code Smell Detection**

    **Deliverables:**

    * Run static analysis tool(s) (e.g., SonarQube, PMD, ESLint).
    * Identify at least 5 code smells or potential bugs.
    * Fix at least 2 of them.
    * Submit report: `courseProjectDocs/static-analysis.md`:
      * Tool used
      * Key findings
      * Fix summary
    
    **Workflow:**

    PR with before/after code changes, static analysis report attached. Merge
- * 11
  * 11/4, 11/6
  * * Paper 9
    * Paper 10
    * Paper 11
    * Paper 12
  * **Integration Testing**

    **Deliverables:**

    * Design and implement integration tests for at least 2 module interactions.
    * Add tests for integration failure/edge cases.
    * Document how test data was prepared: `courseProjectDocs/integration-testing.md`
      * Bug reports (if any)

    **Workflow:**

    PR with integration tests + results. Merge.
- * 12
  * 11/11, 11/13
  * * Paper 13
    * Paper 14
    * Paper 15
    * Paper 16
  * **System Testing**

    **Deliverables:**

    * Create black-box system test cases covering main workflows.
    * Updated coverage report (all levels).
    * Document in `courseProjectDocs/system-testing.md`:
      * Test case table
      * Coverage contribution

    **Workflow:**

    PR with system tests + coverage report. Merge.
- * 13
  * 11/18, 11/20
  * * Paper 17
    * Paper 18
    * Paper 19
    * Paper 20
  * **Security Testing (OWASP)**

    **Deliverables:**

    * Run a security scanning tool (e.g., OWASP ZAP).
    * Identify vulnerabilities from OWASP Top 10.
    * Fix or report findings.
    * Document in `courseProjectDocs/security-testing.md`:
      * Vulnerabilities found
      * Severity & recommendations

    **Workflow:**

    PR with security report + fixes if applicable. Merge.
- * 14
  * 11/25, 11/27
  * * Paper 21
    * Paper 22
    
    Thanksgiving Holiday - No classes on 11/27
  * **Performance Testing**

    **Deliverables:**

    * Run performance tests (JMeter, Locust, k6, etc.).
    * Document metrics (response time, throughput, resource usage).
    * Document in `courseProjectDocs/performance-testing.md`:
      * Test setup
      * Performance results
      * Bottleneck analysis

    **Workflow:**

    PR with performance report + relevant artifacts. Merge.
- * 15
  * 12/2, 12/4
  * * Paper 23
    * Paper 24

    Project Final Presentation
  * None
- * 16
  * 12/9, 12/11
  * Project Final Report Submission
  * None
{{% /flex-table %}}

### Textbook(s)

There are no books to purchase for this class, some reference books:

* *Software Testing and Quality Assurance: Theory and Practice*, by Kshirasagar Naik and Priyadarshi Tripathy
* *Software Testing: Principles and Practice*, by Srinivasan Desikan and Gopalaswamy Ramesh
* *Introduction to Software Testing*, by Paul Ammann and Jeff Offutt

We will read research papers from leading software engineering testing/quality assurance conferences. Selected papers will be presented / reviewed by students throughout the semester.

### Course Format

#### Lectures

You know what these are.

#### Seminar

In each seminar class, students will participate in the discussion of two research papers. Each student is going to lead the discussion for one paper throughout the semester. Select the paper you would like to present before 10/7. The student should prepare slides for presenting the paper in detail:

* What is the problem the paper tries to solve, and why is this important?
* What is the proposed solution, and what is the difference(s) with prior work?
* How is the proposed solution evaluated (e.g., with what benchmarks/subjects and what metrics) and is that convincing?
* What are the results and do they meet the expectations?
* What do you like the most about the paper and what are the limitations of the paper? (i.e., pros/cons)
* What could be the potential future work?

Send your initial slides a week before your presentation slot, and submit the final version of the slides 48 hours before the lecture. Note that you should not directly reuse the original slides from the authors, but feel free to incorporate anything useful from the original slides in your own slides.

#### Paper review

We will be reading papers in the areas software quality assurance. Every student will read a total of around 24 papers over the course of the semester. Students will fill out a small form to show they have read and (attempted to) understand the paper before the class where that paper is presented. Late work will be penalized 10% per day that it is late. You will submit your review through [Research Paper Form](https://docs.google.com/forms/d/e/1FAIpQLSdYYtAtpWRebOpp2TCmpdtLX5F_-kOjK_1Bfd--H09fWx-klw/viewform?usp=sharing&ouid=112919565505841639048).

### Course Project

There will be a software testing related project for the course. The project will allow group work (up to 3 people), but working in a group is optional (i.e., you may choose to work alone). Your team will pick a project from the provided open-source project list by the second week of class.

Over the semester, your team will apply the software testing techniques covered in class to your chosen project. These techniques include, but are not limited to:

* Unit Testing
* Integration Testing
* System Testing
* Security Testing
* Performance Testing
* Mutation Testing
* Static Analysis and Code Smell Detection

The goal of the project is to give you hands-on experience working with a real-life codebase, improving its quality, and documenting your testing process.

Your work will be organized according to weekly deliverables outlined in the project schedule on the course website. Deliverables include implementing tests, documenting results, analyzing coverage, performing code reviews, and preparing short reports.

By the end of the semester, each team should have a comprehensive view of the project’s quality attributes, improvements made, and the effectiveness of applied testing techniques.

### Attendance and Participation Policy

Participation in the question-and-answer segments of class is required of all students. You do not necessarily need to ask a question/comment every day, but regularly participating will help guarantee a high grade. If you have a personal event (sickness, etc), an RIT activity, or a job-related activity (interviews, etc) that keeps you from class, please inform the instructor. Keep in mind that, the more classes you are unable to attend, the less you will be graded on; better to attend class if possible.

### Grade Distribution

The following tables will be used to determine your letter grade at the conclusion of the course:

* Midterm Exam 30%
* Participation in class discussions 10%
* Presentation 10%
* Research paper summary form 20%
* Course project 30%
    * Proposal submission(5%)
    * Midterm project report/presentation (5%)
    * Final project report/presentation (20%)

### Grading Letter Breakdown

{{% flex-table cols="2" %}}
- * Grade
  * Percentage Range
- * A
  * 93+
- * A-
  * 90 <= x < 93
- * B+
  * 87 <= x < 90
- * B
  * 83 <= x < 87
- * B-
  * 80 <= x < 83
- * C+
  * 77 <= x < 80
- * C
  * 73 <= x < 77
- * C-
  * 70 <= x < 73
- * D
  * 60 <= x < 70
- * F
  * under 60
{{% /flex-table %}}

Rounding is at the discretion of the instructor.

### We Care About Your Wellness

Success in this course depends heavily on your personal health and wellbeing. We recognize that stress is an expected part of the college experience, and it often can be compounded by unexpected setbacks or life changes outside the classroom. Moreover, those with marginalized identities may be faced with additional social stressors.

Your other instructors and I strongly encourage you to reframe challenges as an unavoidable pathway to success. Reflect on your role in taking care of yourself throughout the term, before the demands of exams and projects reach their peak.

Please feel free to reach out to your instructor about any difficulty you may be having that may impact your performance in this course as soon as it occurs and before it becomes unmanageable. In addition to your academic advisor, we strongly encourage you to contact the many other support services on campus that stand ready to assist you.

### On Generative AI

All student work is required to be their own. While we encourage research and reuse, all submissions must be your own, original creation. Copying/ Plagiarism is NOT tolerated. This is standard policy. This applies to ALL work, be it code related or written/ essay style submission.

In situations where use of online resources is prohibited, this includes prohibition of GPT/ AI. In situations where it is not prohibited (unless otherwise stated), you may use online search for reference, but the output you create must be your own. This includes situations where you may use GPT or other AI tools for searching and/ or reference, with the following provisos:

If you use GPT (ChatGPT or other, similar tools) you must also do the following:

* Submit your prompts for GPT (as a separate file) as part of your work
* Provide a confirming statement that GPT was used as reference only, and your work is original.

If ANY of your work is found to be copied (from online sources OR ChatGPT/ AI), you would be subject to serious penalties which could be one or more of the following:

* Zero on the assignment
* Zero on a full project
* “F” on the course
* Reported as plagiarism to the University and subsequent disciplinary action at the Institution level

In short - just don’t do it. It’s not worth the consequences to cheat (and it’s not ethical)!
