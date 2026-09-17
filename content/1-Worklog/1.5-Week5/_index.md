---
title: "Week 5 Worklog"
date: 2026-06-29
weight: 5
chapter: false
pre: " <b> 1.5. </b> "
---



### Week 5 objectives
* Study Amazon RDS relational databases and Amazon DynamoDB NoSQL databases.
* Deploy, connect, and secure Amazon RDS in a custom VPC.
* Connect a web backend running on EC2 to Amazon RDS.

### Work completed
| Day | Work | Start date | Completion date | Reference |
| --- | --- | --- | --- | --- |
| 2 | Study RDS, compare PostgreSQL/MySQL/Aurora, and review DynamoDB. | 06/29/2026 | 06/29/2026 | [Amazon RDS](https://docs.aws.amazon.com/rds/) |
| 3 | Study DB subnet groups, Multi-AZ, read replicas, and cloud database security. | 06/30/2026 | 06/30/2026 | [Multi-AZ](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html) |
| 4 | Create a DB subnet group, deploy a private MySQL instance, and configure its security group. | 07/01/2026 | 07/01/2026 | [Create an instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateInstance.html) |
| 5 | Connect with DBeaver/MySQL Client or an SSH tunnel, then create a schema and sample data. | 07/02/2026 | 07/02/2026 | [Connect to an instance](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ConnectToInstance.html) |
| 6 | Create a DynamoDB table, perform CRUD through the CLI/Console, and compare RDS with DynamoDB. | 07/03/2026 | 07/03/2026 | [DynamoDB](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html) |

### Week 5 achievements
* Understand the difference between relational RDS and NoSQL DynamoDB.
* Successfully created an RDS instance in a private subnet with no direct public access.
* Configured a security group for trusted internal EC2-to-RDS connections.
* Successfully performed SQL statements and basic NoSQL operations on AWS.