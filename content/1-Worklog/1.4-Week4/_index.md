---
title: "Week 4 Worklog"
date: 2026-06-22
weight: 4
chapter: false
pre: " <b> 1.4. </b> "
---


### Week 4 Objectives:
* Gain in-depth understanding of AWS Identity and Access Management (IAM).
* Establish Least Privilege access controls using IAM Users, Groups, Roles, and Policies.
* Practice attaching IAM Roles to EC2 instances for secure inter-service access.

### Tasks to be carried out this week:
| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 2 | - Study AWS IAM core concepts: Users, Groups, Roles, Policies <br> - Learn IAM Policy JSON structure (Effect, Action, Resource, Condition) | 06/22/2026 | 06/22/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html) |
| 3 | - Compare Inline Policies vs Managed Policies (AWS Managed vs Customer Managed) <br> - Explore IAM Roles and Temporary Security Credentials | 06/23/2026 | 06/23/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html) |
| 4 | - **Practice:** <br>&emsp; + Create IAM Users and enforce Multi-Factor Authentication (MFA) <br>&emsp; + Create IAM Groups applying Least Privilege principle <br>&emsp; + Test access policies using IAM Policy Simulator | 06/24/2026 | 06/24/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa.html) |
| 5 | - **Advanced Practice:** <br>&emsp; + Create an IAM Role with S3 Read/Write permissions <br>&emsp; + Attach IAM Role to EC2 Instance (Instance Profile) <br>&emsp; + Verify EC2 to S3 CLI access without hardcoding access keys | 06/25/2026 | 06/25/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html) |
| 6 | - Review security audit logs using AWS CloudTrail <br> - Summarize IAM security best practices | 06/26/2026 | 06/26/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html) |

### Week 4 Achievements:
* Understood and authored IAM Policies in JSON format proficiently.
* Secured user accounts by enforcing MFA and implementing the Least Privilege framework.
* Attached IAM Roles directly to EC2 Instances, completely eliminating hardcoded access key vulnerabilities.