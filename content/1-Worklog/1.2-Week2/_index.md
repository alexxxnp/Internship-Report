---
title: "Week 2 Worklog"
date: 2026-06-08
weight: 2
chapter: false
pre: " <b> 1.2. </b> "
---
{{% notice warning %}}
⚠️ **Note:** The following information is for reference purposes only. Please **do not copy verbatim** for your own report, including this warning.
{{% /notice %}}


### Week 2 Objectives:

* Master core AWS networking concepts (VPC, Subnet, Route Table, Internet Gateway).
* Understand IP allocation, Public Subnet, and Private Subnet isolation.
* Build a secure networking environment and deploy a basic web application architecture on AWS.

### Tasks to be carried out this week:
| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 2 | - Learn about Amazon VPC (Virtual Private Cloud) overview <br> - Study CIDR Blocks, Subnetting, IPv4/IPv6 concepts <br> - Differentiate Public Subnets and Private Subnets | 06/08/2026 | 06/08/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html) |
| 3 | - Learn routing mechanisms: Route Tables, Internet Gateway (IGW), NAT Gateway <br> - Differentiate Security Groups (Stateful) and Network ACLs (Stateless) | 06/09/2026 | 06/09/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) |
| 4 | - **Practice:** <br>&emsp; + Create a Custom VPC <br>&emsp; + Create 1 Public Subnet & 1 Private Subnet <br>&emsp; + Create and attach an Internet Gateway to the VPC <br>&emsp; + Configure Route Table for Public Subnet for internet routing | 06/10/2026 | 06/10/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/vpc-subnets-commands-example.html](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-subnets-commands-example.html) |
| 5 | - **Advanced Practice:** <br>&emsp; + Launch EC2 Instance in Public Subnet (Assign Public IP / Elastic IP) <br>&emsp; + Install Nginx/Apache Web Server on EC2 <br>&emsp; + Configure Security Group to open ports 80/443 (HTTP/HTTPS) and 22 (SSH) | 06/11/2026 | 06/11/2026 | [https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hosting-web-site.html](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hosting-web-site.html) |
| 6 | - Test external internet accessibility to the Web Server <br> - Configure NAT Gateway to allow EC2 in Private Subnet to access internet for updates | 06/12/2026 | 06/12/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html) |


### Week 2 Achievements:

* Designed and built a fully functional custom isolated VPC on AWS.
* Mastered IP addressing allocation with CIDR blocks and clear separation of Public/Private Subnet architecture.
* Successfully configured Route Tables and Internet Gateways to enable secure external internet connectivity.
* Acquired in-depth knowledge and clear distinction between Security Groups and Network ACLs.
* Successfully deployed an Nginx/Apache Web Server on a Public EC2 instance accessible via Public IP/Elastic IP.
* Configured NAT Gateway enabling Private Subnet resources to fetch software updates securely without public exposure.