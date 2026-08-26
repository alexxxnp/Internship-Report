---
title: "Week 6 Worklog"
date: 2026-07-06
weight: 6
chapter: false
pre: " <b> 1.6. </b> "
---
{{% notice warning %}}
⚠️ **Note:** The following information is for reference purposes only. Please **do not copy verbatim** for your own report, including this warning.
{{% /notice %}}

### Week 6 Objectives:
* Master Elastic Load Balancing (ALB/ELB) and Auto Scaling Group (ASG) mechanisms.
* Build a High Availability (HA) and Fault Tolerant cloud architecture.
* Configure Health Checks and dynamic instance scaling rules based on real-time traffic.

### Tasks to be carried out this week:
| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 2 | - Learn Load Balancer types: Application Load Balancer (ALB), Network Load Balancer (NLB) <br> - Understand Target Groups, Health Checks, Path-based Routing | 07/06/2026 | 07/06/2026 | [https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html) |
| 3 | - Study Amazon EC2 Auto Scaling Group (ASG) <br> - Understand Launch Templates, Scaling Policies (Target Tracking, Step Scaling) | 07/07/2026 | 07/07/2026 | [https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html) |
| 4 | - **ALB Practice:** <br>&emsp; + Create ALB across 2 Availability Zones <br>&emsp; + Create Target Group and attach 2 EC2 instances <br>&emsp; + Verify HTTP traffic distribution | 07/08/2026 | 07/08/2026 | [https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-application-load-balancer.html](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-application-load-balancer.html) |
| 5 | - **ASG Practice:** <br>&emsp; + Create Launch Template with User Data script for automated web server configuration <br>&emsp; + Build ASG attached to ALB <br>&emsp; + Configure Instance Capacity: Desired=2, Min=2, Max=4 | 07/09/2026 | 07/09/2026 | [https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html) |
| 6 | - Conduct CPU stress test to evaluate ASG Scale-out and Scale-in behavior <br> - Simulate instance failure to verify ALB health checks and automatic replacement | 07/10/2026 | 07/10/2026 | [https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html) |

### Week 6 Achievements:
* Successfully built a High Availability architecture across Multi-AZ environments.
* Balanced incoming web traffic seamlessly using Application Load Balancers.
* Automated server scaling workflows using Auto Scaling Groups based on active resource consumption.