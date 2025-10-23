---
title: "Project Check-in"

weight: 20

draft: true
---

## Project Check-in Overview

Teams will have three scheduled check-ins with either the Professor or a Course Assistant (CA) to discuss their progress and demonstrate portions of their project. Each team’s meeting schedule is based on the following table:

{{% flex-table advanced-cols="6em 1fr 1fr 1fr" width="100%" %}}
- * Check-in
  * Meet w/ Instructor
  * Meet w/ CA
  * Meet w/ CA

- * #1
  * Teams 1-2
  * Teams 3-4
  * Teams 5-6

- * #2
  * Teams 3-4
  * Teams 5-6
  * Teams 1-2

- * #3
  * Teams 5-6
  * Teams 1-2
  * Teams 3-4
{{% /flex-table %}}

Scheduling Details:

* Teams are responsible for scheduling appointments via the provided scheduling tool (e.g., Calendly). Instructions will be provided in class.
* Meetings typically last 15–30 minutes.
* While all team members are encouraged to attend, it is acceptable to designate one or more representatives to present on behalf of the team.

Additional Meetings:

* Teams are encouraged to meet with the Professor or CA outside of scheduled check-ins to ask questions or address project-related challenges.

### Summary of Check-in Expectations

Each check-in is an opportunity for teams to present their progress, demonstrate specific deliverables, and discuss any challenges. The details of each check-in will be provided elsewhere, but the following summarizes the expectations and point values:

{{% flex-table advanced-cols="6em 6em 1fr" width="100%" %}}
- * Check-in
  * Point Value
  * Deliverables

- * #1
  * 5 points
  * * Kanban board (1 point)
    * Basic Terraform setup (3 points)
    * Risk identification (1 point)

- * #2
  * 5 points
  * * Kanban board (1 point)
    * Intermediate Terraform setup (2 points)
    * One functional component with a basic user interface (2 points)

- * #3
  * 10 points
  * * Kanban board (1 point)
    * Complete Terraform infrastructure (4 points)
    * Integrated demonstration with a mostly complete UI (5 points)
{{% /flex-table %}}

## Project Check-in Details

### Check-in #1 - Initial Setup and Progress

Goals:

1. Validate the initial setup and foundational work on the project.
2. Confirm basic Terraform usage for initial infrastructure setup.
3. Ensure teams have identified at least two risks to their project (beyond time and resource constraints).

Deliverables and Point Breakdown:

1. Kanban Board Review **(1 point)**:
    * Present the Kanban board showing:
        * Tasks for the initial setup and foundational infrastructure.
        * Task assignments, current progress, and plans for the next milestones.
        * Identification of any risks or blockers.
2. Terraform Demonstration **(3 points)**:
    * Provision *at least two* basic resources using Terraform:
        * Examples: S3 bucket, EC2 instance, or a simple database.
    * Show Terraform scripts, successful `terraform apply`, and state management.
3. Risk Identification **(1 point)**:
    * Identify *at least two* risks to the project outside of time and resource constraints.
    * Examples include technical limitations, integration challenges, or skill gaps within the team.
    * Provide potential mitigation strategies for these risks.

### Check-in #2 - Intermediate Progress and Functional Demonstration

Goals:

1. Ensure significant progress on project infrastructure and functional components.
2. Validate intermediate Terraform usage with *at least four* AWS resources provisioned.
3. Demonstrate a working user interface integrated with back-end functionality.

Deliverables and Point Breakdown:

1. Kanban Board Review **(1 point)**:
    * Updated Kanban board showing:
        * Completed tasks since Check-In #1.
        * Current tasks and assignments.
        * Detailed plans for the next check-in and the polished demo.
2. Terraform Demonstration **(2 points)**:
    * Use Terraform to provision *at least four* integrated AWS resources:
        * Examples: EC2 with auto-scaling, a Lambda function, an RDS or DynamoDB database, and a VPC or API Gateway.
    * Demonstrate integration between resources (e.g., API Gateway interacting with Lambda and DynamoDB).
3. Functional Component with User Interface **(2 points)**:
    * Demonstrate *at least one* working functional component with an accompanying basic user interface:
        * Example: A front-end that allows users to interact with the back-end (e.g., login functionality, submitting data to a database).
    * Explain how this user interface integrates with the back-end services and how it aligns with the overall project.

### Check-in #3 - Full Integration and Pre-Demo Readiness

Goals:

1. Ensure the project is fully integrated and functional in preparation for the polished demo to class.
2. Validate Terraform setup for complete infrastructure.
3. Demonstrate that the user interface is mostly complete and ready for the demo.

Deliverables and Point Breakdown:

1. Kanban Board Review **(1 point)**:
    * Updated Kanban board showing:
        * Completed tasks leading up to the polished demo.
        * Remaining work for the final submission in week 16.
2. Complete Terraform Infrastructure **(4 points)**:
    * Demonstrate provisioning of the *full infrastructure* using Terraform, including:
        * Major components like front-end hosting, back-end services, databases, and networking.
        * Integration between resources (e.g., API Gateway -> Lambda -> DynamoDB).
        * Clean teardown using `terraform destroy`.
3. Fully Functional Demonstration with User Interface **(5 points)**:
    * Show all major components working together with an accompanying mostly complete user interface:
        * The user interface should demonstrate all planned workflows (e.g., login, data submission, and retrieval).
        * The UI may not be polished but should be functional and demonstrate integration with back-end services.
        * Test a complete user flow with sample data.