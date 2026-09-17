---
title: "Week 11 Worklog"
date: 2026-08-10
weight: 11
chapter: false
pre: " <b> 1.11. </b> "
---


### Week 11 Objectives:
* Plan, design, and implement the comprehensive Capstone Project.
* Apply AWS 3-Tier Architecture principles (Web Tier, App Tier, Database Tier).
* Integrate previously learned services into a production-ready, highly scalable web application.

### Tasks to be carried out this week:
| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 2 | - Analyze capstone project requirements <br> - Architecture Design: Draft AWS 3-Tier Web Application Diagram (S3/CloudFront + ALB/EC2 + RDS) | 08/10/2026 | 08/10/2026 | [https://aws.amazon.com/blogs/architecture/web-application-hosting-in-the-aws-cloud/](https://aws.amazon.com/blogs/architecture/web-application-hosting-in-the-aws-cloud/) |
| 3 | - Provision Network & Security Layer (Custom VPC, Public/Private Subnets, IGW, NAT Gateway, Security Groups) | 08/11/2026 | 08/11/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Scenario2.html](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Scenario2.html) |
| 4 | - Deploy Database Tier: Launch Amazon RDS MySQL inside Private Subnets <br> - Deploy Application Tier: Configure EC2 Instances inside ASG connected to RDS | 08/12/2026 | 08/12/2026 | [https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Tutorials.WebServerDB.CreateWebServer.html](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Tutorials.WebServerDB.CreateWebServer.html) |
| 5 | - Deploy Web & Distribution Tier: Position ALB in front of App EC2 instances and distribute Frontend via CloudFront | 08/13/2026 | 08/13/2026 | [https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancer-getting-started.html](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancer-getting-started.html) |
| 6 | - Bundle application code, configure cross-tier database connections, and run full-stack integration testing | 08/14/2026 | 08/14/2026 | [https://aws.amazon.com/getting-started/hands-on/build-web-app-s3-lambda-api-gateway-dynamodb/](https://aws.amazon.com/getting-started/hands-on/build-web-app-s3-lambda-api-gateway-dynamodb/) |

### Week 11 Achievements:
* Successfully designed an enterprise-grade highly available 3-Tier Web Architecture.
* Integrated Custom VPC, RDS MySQL, EC2 ASG, ALB, S3, and CloudFront seamlessly.
* Executed end-to-end full-stack web application deployment on AWS.