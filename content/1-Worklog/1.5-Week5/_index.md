---
title: "Week 5 Worklog"
date: 2026-06-29
weight: 5
chapter: false
pre: " <b> 1.5. </b> "
---
{{% notice warning %}}
⚠️ **Note:** The following information is for reference purposes only. Please **do not copy verbatim** for your own report, including this warning.
{{% /notice %}}

### Week 5 Objectives:
* Explore relational database Amazon RDS and NoSQL database Amazon DynamoDB.
* Deploy, connect, and secure Amazon RDS inside a Custom VPC infrastructure.
* Establish secure backend connectivity from EC2 Web Servers to Amazon RDS.

### Tasks to be carried out this week:
| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 2 | - Overview of Amazon RDS (Relational Database Service) <br> - Compare DB Engines: PostgreSQL, MySQL, Aurora <br> - Overview of Amazon DynamoDB (NoSQL Key-Value Store) | 06/29/2026 | 06/29/2026 | [https://docs.aws.amazon.com/rds/](https://docs.aws.amazon.com/rds/) |
| 3 | - Learn DB Subnet Group, Multi-AZ Deployment, and Read Replicas <br> - Study cloud database security strategies | 06/30/2026 | 06/30/2026 | [https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html) |
| 4 | - **Practice:** <br>&emsp; + Create DB Subnet Group for Private Subnets <br>&emsp; + Launch Amazon RDS MySQL Instance in Private Subnet <br>&emsp; + Configure Security Group restricting inbound traffic only to EC2 Web Servers | 07/01/2026 | 07/01/2026 | [https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateInstance.html](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateInstance.html) |
| 5 | - **Connection Practice:** <br>&emsp; + Connect to RDS using DBeaver/MySQL Client via EC2 SSH Tunnel <br>&emsp; + Initialize database schema and insert sample records | 07/02/2026 | 07/02/2026 | [https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ConnectToInstance.html](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ConnectToInstance.html) |
| 6 | - Create a DynamoDB table and perform basic CRUD operations via AWS CLI/Console <br> - Compare RDS vs DynamoDB use cases in real-world applications | 07/03/2026 | 07/03/2026 | [https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html) |

### Week 5 Achievements:
* Clear understanding of trade-offs between Relational Databases (RDS) and NoSQL (DynamoDB).
* Successfully deployed an RDS Instance isolated inside Private Subnets, safe from internet exposure.
* Properly configured Security Groups allowing secure database traffic strictly from EC2 Web instances.