---
title: "Blog 2"
date: 2024-01-01
weight: 1
chapter: false
pre: " <b> 3.2. </b> "
---
# Understanding techniques to reduce AWS Lambda costs in serverless applications
1. Operational Challenges
Although serverless architecture reduces costs through a pay-per-use model, high-demand applications can still incur significant AWS Lambda costs if not properly optimized. The main challenge lies in configuring resources (Memory/CPU) appropriately, selecting the right processor architecture, and avoiding wasted time executing code without having to rewrite the entire application.
2. Technical Solutions & Optimization Tools
This AWS Compute Blog post guides you through Lambda cost optimization strategies focused on configuration:
- AWS Lambda Power Tuning: An open-source tool that runs Lambda function tests at various RAM capacities (from 128MB to 10,240MB) to find the "sweet spot" between runtime and cost.
- Switching to AWS Graviton2 (Arm-based) processors: Changing the execution chip architecture from x86 to Arm increases performance by up to 19% while reducing costs by an additional 20%.
- AWS Compute Optimizer: A service that analyzes historical operational data (via Machine Learning) to provide recommendations for optimal memory configurations for applications running in a Production environment.
3. Value Proposition
- Direct cost savings: Reduce Lambda computation costs by up to 20%–34% simply by changing hardware configuration (switching to Graviton2) without modifying the source code.
- Performance optimization: Properly adjusting RAM capacity increases CPU utilization, reduces execution time (duration), and improves response speed for end-users.
- Data-driven decision-making: Eliminate guesswork in infrastructure configuration thanks to automated benchmarking tools.
📌 Original article source: https://aws.amazon.com/vi/blogs/compute/understanding-techniques-to-reduce-aws-lambda-costs-in-serverless-applications/
![Blog 2](/images/5-Workshop/3.5.jpg)