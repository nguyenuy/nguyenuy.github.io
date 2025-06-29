---
title: "Resume"
layout: "resume"
date: 2024-07-25T12:00:00-07:00
summary: "A detailed overview of my professional experience, skills, and education in software engineering and cloud technologies."
draft: false
---
## Education

* **Georgia Institute of Technology**
    * Master of Science in Computer Science, Specialization in Computing Systems (01/2014 - 12/2015)
        * GPA: 4.00
        * Relevant Courses: Databases, Algorithms, Computer Networks, Enterprise Computing, Operating Systems, Advanced Internet Applications, Big Data Systems
    * Bachelor of Science in Electrical Engineering with Highest Honor, Computer Networking Concentration (08/2006 – 12/2010)
        * GPA: 3.58

## Certifications

* AWS Solutions Architect - Associate - Issued 02/2020

## Skills

* **Languages**: Python, SQL, Scala, Java, Bash, C, HTML, CSS
* **Data**: Spark, Kafka, Hadoop, Zookeeper, Hive, HBase, Delta Lake
* **Cloud**: AWS (Sagemaker, Lambda, AppSync, various other services)
* **DevOps**: AWS CDK, Terraform, Docker, Jenkins, CircleCI, Serverless, Docker
* **Leadership & Management**: Agile, Scrum, Mentoring, Team Leadership, Stakeholder Communications, Project Delivery, Process Improvement and Optimization

## Work Experience

### Delta Air Lines · Atlanta, Georgia

* **Senior Manager, Software Engineering Ops Decision Science** (09/2021 – Present)
    * Lead and mentor a team of 6 software engineers in the development of proof-of-concept full stack web applications supporting flight and crew operations along with analytical tools.
    * Work with business stakeholders and IT teams to test proof-of-concept applications and establish a path for production deployment and support.
    * Established a migration and best practices for migrating the organization to be 100% on AWS.
    * Maintained relationships with Cloud Center of Excellence and AWS partners to ensure support of our applications.
    * Partnered with all of the organization’s teams to establish CICD processes to speed development time using Gitlab CICD and establishing project templates.
    * Bring in Agile delivery by establishing sprint ceremonies (grooming, planning, retrospectives) partnering with relevant project and org teams.
    * Enable team members to lead implementations and cultivate relationships across teams.
    * Focus on building expertise on the team within full stack domain (backend, frontend, data).
    * Cultivated a high-performance engineering culture by establishing robust knowledge-sharing initiatives, creating opportunities for engineers to lead design efforts, and instituting improved code quality and delivery processes.
    * Drove the strategic roadmap for establishing MLOps processes deploying decision science models on AWS.
    * Influenced strategy around monitoring and deployment types for use by business.
    * Ensured that the Sagemaker development use cases were acceptable by software engineers and data scientists.
* **Senior Full Stack Engineer** (04/2021 – Present)
    * Project: Schedule Impact Optimizer
    * Tech Stack: Python, Dagster (ETL Orchestration), FastAPI, C++, Linux
    * Led initial architecture of application design on AWS.
    * Met with different stakeholders to determine requirements and align with IT constraints.
    * Enforced and encouraged software development practices by having CICD and code reviews.
    * Reduce potential bugs and improve software quality in initial development stages.
    * Aid project developers with issues in debugging application execution and configuration.
    * Address good design principles in design meetings for backend workload architecture while also strategizing ways for development teams to work through transition to development on AWS infrastructure.

### Slalom Consulting · Atlanta, Georgia

* **Senior Consultant** (11/2018 – 04/2021)
    * Project: Real-time Network Outage Application (Industry: Telecommunications) - reduce customer calls and aid problem identification
    * Tech Stack: AWS Neptune, Neptune Streams, Lambda, StepFunctions, SQS, Postgres, Python
    * Lead team of engineers to construct real-time analysis and ingestion of field outage data on Neptune Graph using Lambda with focus on real-time scalability and correctness.
    * Designed REST APIs to consume current outage data on Lambda and AWS API Gateway.
    * Coordinate with stakeholders on uses case, expected payloads, and SLAs.
    * Designed test harness and testing process to instrument full load of application and identify bugs.
    * Project: Automated Data Lake Reporting (Industry: Food)
    * Tech Stack: AWS Glue (Spark), AWS Athena, AWS S3, Tableau (front-end), Python
    * Architect applications to handle nightly ingest into S3 Data Lake using Apache NiFi and AWS Glue with focus on data quality.
    * Reporting focused on identify reconciliations between sales and inventory and coordinating with financials.
    * Also, work with business and IT stakeholders to roadmap future tech state around Data Lake infrastructure on AWS.
    * Introduce CICD processes to build out deployment pipelines to ensure testing and consistent code delivery.
    * Project: Commercial Data Hub (Industry: Food) - Enable analysts access to self-serve data warehouse for sales forecasting
    * Tech Stack: AWS Redshift, AWS Glue, AWS CodePipeline, AWS CodeBuild, Terraform, Python
    * Develop pyspark applications in AWS Glue to process nightly data from S3 Data Lake into AWS Redshift data warehouse.
    * Estimated nightly process load of 100 GB.
    * Tune database based on user requirements and data model - partitioning, sort keys.
    * Coordinate with business and IT to support evolving data models and coach teams on agile practices.
    * Project: Machine Learning Model Effectiveness Framework (Industry: Telecommunications)
    * Tech Stack: AWS EMR, Athena, QuickSight, Parameter Store, Lambda, StepFunctions
    * Construct effectiveness framework for deterministic prediction model utilized as a measurement tool to aid model development until it reached > 90% prediction rate.
    * Tool used as pattern for other models in development.
    * Directed learning workshops including general software engineering principles and Spark best practices for local Data and Analytics practice.
    * Create proof-of-concepts and architecture diagrams for presales meeting for potential clients.
    * Led Hackathon Team to build out application to calculate and generate health scores for zipcodes using Flask, Scikit, Pandas using public datasets.

### Capital One · McLean, Virginia

* **Principal Software Engineer** (08/2017 – 10/2018)
    * Managed inner-sourced tool library called Quantum that runs on Apache Spark.
    * Allows data analysts to quickly build out data pipelines without writing Scala code by expressing pipeline using JSON DSL using transformation component library.
    * Used in production by over 20 teams and have received code contributions from other teams.
    * Tech Stack: Scala, Spark, Spark Jobserver, AWS EC2, ECS, Cloudformation, Cloudwatch, Lambda, Docker
    * Collaborated extensively with the fraud use case team, leading the development of a production-grade Spark structured streaming application.
    * Developed custom connectors and testing that met specific SLAs.
    * Led rebuild and optimization of JSON DSL parsing engine in Scala from a linear execution model to graph based.
    * Increase team commitment to code quality through creating integration tests, improved code coverage, adopting best practices.
    * Helped move AWS Spark cluster deployments to run on ECS from EC2.
    * Contributed jar upload bug fix to Spark Jobserver open source project that affected production deployments.
* **Senior Software Engineer** (02/2016 – 08/2017)
    * Part of a team building out Athena, which is a Data as a Service platform that enables refinement of data into a custom built time series graph database abstract on top of HBase.
    * Allows users to visually build out data ontology models using a UI which would ingest data into graph database and serve data via REST API and/or Kafka topic.
    * Tech Stack: Scala, Play Framework, Kafka, Akka, HBase
    * Architected and deployed data streaming ingestion cluster (Akka Streams) for ETL to HBase.
    * Collaborated closely with the Customer Journeys team to develop a comprehensive customer interactions timeline, directly contributing to improved customer service response times.
    * Setup HA microservice infrastructure on AWS using system.d, Consul, Terraform, and Docker.
    * Developed Akka Graph PoC to enable large scale graph traversal in-memory instead of reading from HBase.
* **Software Engineer Intern** (06/2015 – 08/2015)
    * Worked on PoC for initial design of a graph knowledge engine built using Apache Spark and Apache HBase.
    * Built and designed web application using Angular, Play Framework with Scala and Javascript to visually create mapping of financial data in graph engine.
    * Contribute to Capital One Hackathon API by creating Docker setup to establish microservice architecture.

### ARRIS Group · Suwanee, Georgia

* **Software Engineer II** (01/2011 – 08/2014)
    * Tech Stack: Linux development, TCL, C, Network Protocols
    * Write and maintain TCL test scripts and drivers for automation testing framework for cable modem and gateways.
    * Enhance testing framework and setup within Linux (CentOS) to enable quicker test runs and debugging.
    * Supervise cable equipment and networking lab testing configurations to mirror end-to-end customer setup.
    * Communicate with product managers and firmware engineers to define test case and device configuration.
    * Revamp cable modem scanning test to DOCSIS 3.0 standard which led to identification of critical firmware memory leak.
    * Develop RF torture testing of cable modems to address crashes in cable modem firmware in early stages of video set top box development.
    * Create traffic generation environment and scripts to simulate heavy network load and test different internet protocols.

### Georgia Tech CATEA REAR Lab · Atlanta, Georgia

* **Undergraduate Research Assistant** (05/2010 – 08/2010)
    * Designed and programmed physical wireless button system in C using Arduino board for Nintendo Wii controller for use by handicapped patients at Shepherd Center.
    * Created temperature /humidity sensor system within LabView for testing lifecycle of wheelchair seat cushions.