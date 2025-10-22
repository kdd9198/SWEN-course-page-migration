---
title: "Project Overview"

weight: 1

draft: true
---

## Term Project Overview

This course has a term project that you will work on throughout the semester and should comprise of many of the topics and AWS technologies we will cover in class. This will account for **30%** of the overall base grade.

The project is a **team effort**, where team size can be 4-5 students and can be self-formed or randomly assigned. If you need help finding a team, please reach out to the instructor.

When deciding on your project, teams can pick one of the following:

1. **Choose your own** - Teams will come up with their own idea on a project using AWS services. This option offers the most flexibility for teams that want to learn and explore AWS services of their choice.
2. **Select a Project Template** - Teams will select one of the pre-defined project templates, which includes a high-level overview description of a project including the minimal required AWS technologies. Teams will need to add at least one additional AWS technology of their choice.

For either of these options, teams will submit a project proposal template that details their project choice. This is the first deliverable for all teams and must be approved by the instructor before teams can start development on their projects.

Note: **AWS Amplify is not allowed** for the term projects.

## Option #1: Choose Your Own

This option offers the most flexibility with teams that are interested in exploring an idea of their own. Teams choosing to pick their own idea should consider something that would be difficult or even cost prohibitive to build in a non-cloud environment. Teams should check the grading rubric to ensure they meet the guidelines around required number of AWS technologies and project setup and teardown requirements.

### Project Considerations

* Leveraging AWS managed services - These are cloud feature that you can use without having to take care of the underlying hardware’s administration. In the AWS ecosystem, you will find AWS Fargate, AWS Lambda, AWS Aurora, Amazon DynamoDB, and Elastic Beanstalk, among others.
* Other AWS services that provide rich functionality that would be very timely and/or costly to custom build. Some examples:
    * [Comprehend](https://aws.amazon.com/comprehend/) - A natural language processing (NLP) service that uses machine learning to find insights and relationships in text. No machine learning experience required.
    * [Transcribe](https://aws.amazon.com/transcribe/) - Uses a deep learning process called automatic speech recognition (ASR) to convert speech to text quickly and accurately.
    * [Rekognition](https://aws.amazon.com/rekognition/?blog-cards.sort-by=item.additionalFields.createdDate&blog-cards.sort-order=desc) - Makes it easy to add image and video analysis to your applications using proven, highly scalable, deep learning technology that requires no machine learning expertise to use.
    * [Personalize](https://aws.amazon.com/personalize/) - Enables developers to build applications with the same machine learning (ML) technology used by Amazon.com for real-time personalized recommendations – no ML expertise required.

There are wide variety of areas to explore, so teams are encouraged to select a project that is creative, challenging, and fun!

Need more ideas? Check out the following:

* AWS hands-on tutorials (https://aws.amazon.com/getting-started/hands-on/) to learn new AWS technologies. There will be opportunities in class to do some of these as part of your homework assignment.
* Explore AWS Technologies through the AWS Management Console. Many of these offer hands-on demos that can help you get started.

## Option #2: Project Template

Teams that prefer not to design their own project may select from one of the pre-defined project templates. Each template includes a general overview along with a list of required AWS technologies that must be used. **Teams will need to manage the costs of using any of these services under their AWS plan.**

For each template, an example data source is provided. While these have not been fully verified, they offer a starting point for exploration. Teams may use an alternative data source, but it is strongly recommended that this be finalized early to prevent delays in project completion.

**Important Requirements and Restrictions:**

* Teams must incorporate at least one additional AWS technology to receive full credit.
* **AWS Amplify is not allowed** for any of the template projects.
* Teams are expected to use the specified technologies listed for each template. Substitutions require **prior approval from the instructor**. Unauthorized changes will result in a deduction in credit.

### #1 - Intelligent Stock Market News Analyzer

Monitors financial news feeds and analyzes sentiment around specific stocks and cryptocurrencies. Users can track sentiment trends, get alerts on negative news, and view sentiment-based investment insights.

AWS Technologies:

* **Amazon Comprehend:** Analyzes sentiment and extracts key phrases from financial news
* **RDS:** Stores news articles, sentiment scores, and user watchlists
* **Lambda:** Fetches news data and processes sentiment analysis
* **S3:** Hosts the dashboard interface and stores processed data
* **EC2:** Runs scheduled news collection and trend analysis

Example Data Source:

* Alpha Vantage API (https://www.alphavantage.co/documentation/). Provides real-time and historical stock data, financial news, and market indicators.

### #2 - Voice-Powered Weather Assistant

A conversational weather application where users can ask questions about weather conditions using natural language and receive spoken responses with detailed forecasts.

AWS Technologies:

* **Amazon Lex:** Processes natural language weather queries
* **Amazon Polly:** Converts weather information to speech responses
* **DynamoDB:** Stores user preferences and frequently requested locations
* **Lambda:** Fetches weather data and handles voice interactions
* **S3:** Hosts the web interface and stores weather icons

Example Data Source:

* OpenWeatherMap API (https://openweathermap.org/api). Provides current weather, forecasts, and historical weather data for locations worldwide.

### #3 - MulClingual News TranslaCon PlaEorm

Aggregates news from international sources and automatically translates articles into multiple languages, allowing users to stay informed about global events regardless of language barriers.

AWS Technologies:

* **Amazon Translate:** Translates news articles between different languages
* **Amazon Comprehend:** Categorizes news articles by topic and extracts key entities
* **RDS:** Stores translated articles and user reading preferences
* **Lambda:** Fetches international news and manages translation workflows
* **S3:** Hosts the news reader interface and caches translated content

Example Data Source:

* NewsAPI (https://newsapi.org/). Provides access to breaking news headlines and articles from news sources and blogs across the web.

### #4 - Global Flight Deal Finder with Voice Alerts

Description: Monitors flight prices across multiple destinations and alerts users about deals through voice notifications. Users can ask about flight prices using natural language queries.

AWS Technologies:

* **Amazon Lex:** Handles natural language queries about flight prices and destinations
* **Amazon Polly:** Provides voice alerts for flight deals and price changes
* **RDS:** Stores flight data, user preferences, and price history
* **Lambda:** Fetches flight data and monitors price changes
* **S3:** Hosts the travel dashboard and stores deal notifications

Example Data Source:

* Amadeus Travel API (https://developers.amadeus.com/). Provides real-time flight search, pricing, and booking capabilities.

### #5 - Environmental Data Monitor with Alerts

Tracks environmental metrics (air quality, weather patterns, natural disasters) and sends intelligent alerts based on user location and preferences.

AWS Technologies:

* **Amazon SNS:** Sends email/SMS alerts for environmental hazards
* **Lambda:** Processes environmental data and determines alert conditions
* **DynamoDB:** Stores user preferences and historical environmental data
* **S3:** Hosts the environmental dashboard
* **Amazon CloudWatch:** Monitors environmental thresholds and triggers alarms

Example Data Source:

* AirNow API (https://docs.airnowapi.org/). Real-time and historical air quality data across the United States.

### #6 - Automated Resume Builder with AI OpCmizaCon

Creates and optimizes resumes based on job descriptions, uses AI to suggest improvements, and tracks application success rates.

AWS Technologies:

* **Amazon Comprehend:** Analyzes job descriptions and extracts key requirements
* **Amazon Textract:** Extracts text from existing resume uploads
* **Lambda:** Generates resume templates and optimization suggestions
* **S3:** Stores resume templates and generated documents
* **DynamoDB:** Stores user profiles and application tracking data

Example Data Source:

* Adzuna API (https://developer.adzuna.com/). Job listings with comprehensive job data across multiple countries, or simulated job posting data.

## Project Setup / Teardown Guidelines

All project code, sample data (if applicable), and relevant files must be uploaded to the team’s **GitHub** repo, which will be set up during a future class session. Teams are encouraged to incorporate open-source code where appropriate, but it is mandatory to provide proper attribution to the original authors. Failure to properly attribute open-source code will result in penalties.

A critical component of the team project is automating the **setup** and **teardown** of the infrastructure using **Terraform**. Teams must also use **GitHub Actions** to implement a fully automated Continuous Integration and Continuous Delivery (CI/CD) process. No manual execution of these processes via the AWS console or any other interface is allowed, and no manual installation of software should be required to deploy or destroy the infrastructure.

To receive full credit, the following automation tasks are mandatory:

**Required Automation Tasks:**

* **Setup Action:** Executes `terraform apply` to provision all necessary infrastructure (e.g., EC2 instances, S3 buckets, databases) and deploy the application code automatically.
* **Teardown Action:** Executes `terraform destroy` to completely remove all infrastructure resources, ensuring the environment is clean and resources are properly released.

Teams must ensure that both Terraform and GitHub Actions are seamlessly integrated into the project’s workflow. The automation process will be a key assessment component, and full credit will only be awarded when these tools are correctly and effectively implemented.

Key Guidelines for a Successful Submission:

1. Minimize Setup Time:
    * If your project requires extensive setup times due to data conversion, machine learning model training, or similar activities, pre-process these activities ahead of time. Provide the final content (e.g., pre-trained models, converted data) through a shared resource such as an S3 bucket or a similar storage service.
    * For projects involving databases with large amounts of pre-configured data, ensure that the data is provided with clear instructions on how to load it during the setup phase.
2. Performance Penalties:
    * Projects that take **longer than 30 minutes** to set up due to unnecessary delays or inefficiencies will lose points unless previously approved by the instructor. Make sure your automation scripts are optimized and that unnecessary resource waits are avoided (e.g., ensure that EC2 instances or databases do not remain idle for long periods).
    * If the setup process does not work correctly when submitted, and the instructor must reach out to your team for assistance, additional points will be deducted. It is essential to thoroughly test your setup and teardown processes ahead of time to ensure everything works as expected.
3. Testing is Key:
    * Test your project’s automation scripts on clean environments as much as possible before submission. Make sure that `terraform apply` successfully provisions the infrastructure and that `terraform destroy` cleans up all resources completely.
    * Ensure that any external services (e.g., databases, machine learning models) are correctly integrated and functional during the setup process.
* Additional Considerations:
    * **Security:** Do not hard-code sensitive information (e.g., AWS keys, database passwords) into your project. Use GitHub Secrets and environmental variables to securely manage credentials.
    * **Reusability:** While the project is specific to this course, aim to make your Terraform scripts and automation setup modular and reusable for future projects. Consider using Terraform modules to abstract common infrastructure patterns.

By adhering to these guidelines, teams will ensure that their project is efficient, secure, and fully automated, aligning with best practices for cloud infrastructure and DevOps automation. The focus is on automation, reliability, and minimizing manual intervention during deployment, ensuring the project is ready for real-world scenarios.

## Project Deliverables

The recommended effort is ~10-15 hours/week per team and teams are encouraged to pace their development throughout the semester. There will be check-ins to monitor progress.

There will be **5 deliverables** for the Term Project including **3 check-ins**. Due dates for each of the following will be posted on the home page of myCourses:

{{% flex-table cols="2" %}}
- * Deliverable
  * Submission Location/Details

- * Term Project Proposal (DRAFT)
  * Assignments > Term Project Proposal - Draft

- * Term Project Proposal
  * Assignments > Term Project Proposal

- * Term Project Proposal Presentation
  * Assignments > Term Project Proposal Presentation

- * Team Check-in
  * Refer to Content > Project > Project Check-in

- * Final Presentation
  * Assignments > Term Project > Final Submission

- * Project User’s Guide
  * Assignments > Term Project > Final Submission
{{% /flex-table %}}

For the presentations (proposal and final) and user’s guide, we will be using **Google Docs** so team progress and participation can be tracked.

### Team Project Proposal

All teams must have their projects approved by the instructor. Team will need to fill out and submit a brief proposal, indicating their project choice and other details. The project proposal template can be found at **Assignments > Term Project > Term Project Proposal** and must be submitted before the indicated due date.

### Team Project Proposal Presentation

Teams are required to present a 5-10 minute proposal to introduce their project to the class. The presentation should be in PPT or PDF format and include at least 5 slides covering the following:

* **Team Name and Project Overview:** Briefly introduce the team and outline the project objectives.
* **AWS Services Overview:** List the AWS services you plan to use, with a brief description of how each will support project goals.
* **High-Level Data Flow Diagram:** Present a diagram showing the interaction of AWS services and the primary data flow within the project.
* Only slides with substantive content count toward the minimum; placeholder slides like “Overview” or “Questions” do not.

### Final Presentation

Each team will deliver a **15-minute presentation** to showcase their completed project, which will be presented to the class prior to final submission. The presentation must clearly demonstrate the team’s work, technical understanding, and project completeness. It should include the following elements:

* **Project Overview:** Provide a clear introduction to the project, including its purpose, goals, and what problems it aims to solve.
* **AWS Technologies Used:** Explain each AWS service implemented in the project. Describe its specific role, why it was selected, and how it contributed to the overall solution.
* **Architecture Diagram:** Present a complete architecture diagram using AWS icons. It should illustrate the entire service flow and clearly show how components are integrated.
* **Live Demo on AWS:** Demonstrate the fully functional project running in AWS. The demo should highlight usability and polished. Avoid manual steps as everything should be automated and operational as intended.
* **Cost Estimate and Analysis:** Use the **AWS Pricing Calculator** to provide a cost estimate. Explain major cost drivers, optimizations considered, and benefits of your technology choices.
* **Final Summary:** Provide a comprehensive overview of the project's impact, articulate your concluding recommendations, and highlight potential real-world applications or added value.
* **Slide Requirement:** Your presentation must include **at least 8–10 slides**. Slides must be meaningful placeholders (e.g., a slide with only “Demo”) will not count toward this minimum.

Note: **Teams that exceed the 15-minute time limit will lose points.** It is essential to rehearse your presentation in advance to ensure it stays within the allotted time.

### User’s Guide

Teams must submit a **user’s guide** to help others set up, configure, and use the project. This guide should be **separate from the white paper** and can be submitted as a **Word, PDF, Markdown, or HTML** document. No minimum length is required, but clarity and thoroughness are essential. Include the following:

* **Setup Instructions:** Comprehensive steps for configuring AWS credentials (e.g., AWS Access Key, Secret Key) and other initial configurations.
* Execution Instructions:
    1. **Setup Action:** Provide a step-by-step guide to execute Setup actions using GitHub Actions and Terraform, detailing environmental variables, secrets, and any required pre-configuration.
    2. **Teardown Action:** Instructions for Teardown actions using GitHub Actions to ensure proper resource cleanup.
* **External Resources:** If the project requires preconfigured files or external data sources (e.g., JSON, CSV files), detail where to find and use them.
* **Using the Application:** Provide a comprehensive description of the application’s features and user interface. Include illustrations, screenshots, and sample files that demonstrate the application’s functionality or provide usage scenarios, as applicable.

## Grading Details

The grading rubric can be found in myCourses at **Content > Course Details > Term Project Grading Rubric**

**Note:** While the term project will receive a single grade for the team, the instructor reserves the right to adjust individual grades based on each member’s contribution. This assessment may be informed by both the instructor’s observations and team-provided feedback. Adjustments may be made in either direction based on contribution level.

### Peer Evaluation

Each team member must complete a **mandatory peer evaluation** at the end of the project, assessing each teammate’s performance. This evaluation will be used to ensure fair grading, particularly if there are discrepancies in contribution levels. Failure to complete the peer evaluation will result in a deduction from the student’s individual final project grade.

### Teamwork Expectations

This is a **collaborative team project** with responsibilities spread across **project development, presentation preparation, and documentation**. Each member is expected to contribute equitably across these areas. A successful project will require teamwork and dedication from all team members, and the amount of work available is sufficient for all to make meaningful contributions.

Remember, proactive communication and a commitment to your role will enhance both your learning experience and team success.