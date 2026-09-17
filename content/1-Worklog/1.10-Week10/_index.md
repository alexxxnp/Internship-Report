---
title: "Week 10 Worklog"
date: 2026-08-03
weight: 10
chapter: false
pre: " <b> 1.10. </b> "
---


### Week 10 Objectives:
* Learn Cloud Monitoring and Centralized Logging using Amazon CloudWatch.
* Set up automated CloudWatch Alarms triggered when infrastructure limits are breached.
* Build custom visual CloudWatch Dashboards to monitor system health and metrics.

### Tasks to be carried out this week:
| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 2 | - Overview of Amazon CloudWatch: Metrics, Logs, Alarms, Dashboards <br> - Study CloudWatch Agent deployment on EC2 instances | 08/03/2026 | 08/03/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html) |
| 3 | - Study Amazon Simple Notification Service (SNS) for messaging <br> - Integrate CloudWatch Alarms with SNS Topics for email alerting | 08/04/2026 | 08/04/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/US_SetupSNS.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/US_SetupSNS.html) |
| 4 | - **Practice:** <br>&emsp; + Install and configure CloudWatch Agent on EC2 <br>&emsp; + Stream system logs (Nginx logs, syslog) to CloudWatch Logs Groups | 08/05/2026 | 08/05/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/install-CloudWatch-Agent-on-EC2-Instance.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/install-CloudWatch-Agent-on-EC2-Instance.html) |
| 5 | - **Alerting Practice:** <br>&emsp; + Create CloudWatch Alarm triggering when EC2 CPU exceeds 80% <br>&emsp; + Configure automated SNS email notification delivery | 08/06/2026 | 08/06/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ConsoleAlarms.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ConsoleAlarms.html) |
| 6 | - Build a unified CloudWatch Dashboard displaying CPU, RAM, Network I/O, and Storage metrics <br> - Query application log streams using CloudWatch Logs Insights | 08/07/2026 | 08/07/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html) |

### Week 10 Achievements:
* Established a centralized logging mechanism across EC2 Linux servers.
* Configured real-time email alerts via Amazon SNS triggered by threshold alarms.
* Built custom CloudWatch Dashboards providing holistic real-time visibility into infrastructure health.