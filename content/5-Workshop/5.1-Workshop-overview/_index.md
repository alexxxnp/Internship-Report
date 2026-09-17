---
title : "Introduction"
date : 2024-01-01
weight : 1
chapter : false
pre : " <b> 5.1. </b> "
---

#### Introduction

This section provides a complete overview of the workshop, including its context, architecture, AWS services, and technical objectives.

#### 1. Workshop context and objectives

This lab guides you through a complete cloud application deployment on AWS.

The workshop connects the frontend, API, compute, database, storage, identity, and monitoring layers into one practical workflow. You will follow the request path from the user interface to the backend and data services, then verify the result through logs and service consoles.

* **Knowledge objectives:**
  * Understand how cloud services operate and interact in an application architecture.
  * Understand security, IAM permissions, environment variables, and cloud infrastructure.
* **Skill objectives:**
  * Create, configure, and connect AWS services through the Console and AWS CLI.
  * Package, test APIs, and deploy a practical project using operational standards.

* **Expected results:**
  * Explain the role of each AWS service and the reason it is used in the architecture.
  * Trace a request from the frontend through API Gateway and Lambda to the database or S3.
  * Apply basic security, monitoring, backup, and cost-control practices.

#### 2. AWS services used in the workshop

| AWS service | Role in the system |
| :--- | :--- |
| **Amazon EC2 / AWS Lambda** | Provides compute infrastructure and runs application business logic. |
| **Amazon S3** | Stores static assets, media files, and application builds. |
| **Amazon DynamoDB / RDS** | Stores system data with high scalability. |
| **Amazon API Gateway** | Manages, routes, and protects API connections from the user interface. |
| **AWS IAM** | Manages identities and fine-grained permissions for system resources. |

#### 3. System architecture

![Architecture Diagram](/images/5-Workshop/1.1.jpg)

1. The user sends a request from the web or mobile interface through API Gateway.
2. API Gateway forwards the request to EC2 or Lambda.
3. The backend queries the database and stores or retrieves files from Amazon S3.
4. AWS IAM policies authenticate and authorize interactions between services.

The architecture separates presentation, business logic, and data responsibilities. This separation makes the application easier to test, protects internal resources, and allows each service to scale independently.

#### 4. Prerequisites

* Basic Linux, command-line, and networking knowledge, including HTTP/HTTPS and REST APIs.
* An AWS account with sufficient quota and permissions to create resources.
* A code editor such as Visual Studio Code, Git, Postman, and the runtime required by the sample application.