---
title: "Blog 2"
date: 2024-01-01
weight: 1
chapter: false
pre: " <b> 3.2. </b> "
---
# Understanding techniques to reduce AWS Lambda costs in serverless applications
The AWS Compute Blog post shares how to effectively optimize AWS Lambda costs without rewriting code, focusing on fine-tuning hardware configurations and leveraging automated analysis tools.

Highlights of this architecture:

- Configuration Balancing (AWS Lambda Power Tuning): An open-source tool that automatically tests various RAM levels (128MB - 10,240MB) to find the optimal range for fastest function performance at the lowest cost.
- ARM Chip Upgrade (AWS Graviton2): Switching from x86 to Graviton2 chips increases performance by 19% and reduces computation costs by 20% without code modifications.
- AI Optimization (AWS Compute Optimizer): Uses Machine Learning to analyze real-world application performance history to provide accurate RAM recommendations.
- Dual Optimization (Cost & Performance): Increasing RAM appropriately will increase CPU accordingly, thereby shortening processing time (duration) and improving user response speed.

In short: Instead of guessing configurations, applying automated benchmark tools and switching to Graviton2 chips directly saves 20%–34% on AWS Lambda costs easily.

#AWS #Serverless #AWSLambida #Graviton2 #CostOptimization #CloudComputing
📌 Original article source: https://aws.amazon.com/vi/blogs/compute/understanding-techniques-to-reduce-aws-lambda-costs-in-serverless-applications/
![Blog 2](/images/5-Workshop/3.5.jpg)