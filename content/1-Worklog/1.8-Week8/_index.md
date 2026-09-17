---
title: "Week 8 Worklog"
date: 2026-07-20
weight: 8
chapter: false
pre: " <b> 1.8. </b> "
---

### Week 8 Objectives:
* Master Amazon CloudFront Content Delivery Network (CDN) and Amazon Route 53 DNS management.
* Optimize static web delivery speed and secure sites with AWS Certificate Manager (ACM) SSL/TLS certificates.
* Configure Custom Domain Names pointing to AWS infrastructure resources.

### Tasks to be carried out this week:
| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 2 | - Study Amazon CloudFront (CDN), Edge Locations, Caching Behaviors <br> - Compare Origin Types: S3 Buckets, ALB, Custom Origins | 07/20/2026 | 07/20/2026 | [https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html) |
| 3 | - Study Amazon Route 53: Hosted Zones, DNS Record types (A, CNAME, ALIAS) <br> - Learn Routing Policies: Simple, Weighted, Latency, Failover | 07/21/2026 | 07/21/2026 | [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html) |
| 4 | - **Practice:** <br>&emsp; + Request free SSL/TLS certificate via AWS Certificate Manager (ACM) <br>&emsp; + Create CloudFront Distribution linked to S3 Static Website <br>&emsp; + Configure Origin Access Control (OAC) to secure S3 bucket | 07/22/2026 | 07/22/2026 | [https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html) |
| 5 | - **Route 53 Practice:** <br>&emsp; + Configure Hosted Zone <br>&emsp; + Map DNS Alias Records pointing to CloudFront Distribution / ALB <br>&emsp; + Enable secure HTTPS access | 07/23/2026 | 07/23/2026 | [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html) |
| 6 | - Benchmark site loading performance before and after CloudFront CDN <br> - Practice CloudFront cache invalidation routines | 07/24/2026 | 07/24/2026 | [https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html) |

### Week 8 Achievements:
* Successfully distributed static site content globally using CloudFront CDN for reduced latency.
* Enforced end-to-end HTTPS encryption using ACM SSL certificates.
* Mastered Route 53 DNS routing and restricted direct public S3 bucket access using OAC.