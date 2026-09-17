---
title : "Clean up resources"
date : 2024-01-01
weight : 9
chapter : false
pre : " <b> 5.9. </b> "
---
#### Clean up resources

Congratulations on completing this lab. In this lab, you learned about architecture patterns for accessing Amazon S3 without using the public Internet.

Delete resources in the same Region used during the workshop. Before deleting a database, table, bucket, or log group, confirm that no data is still required and download any files or logs that must be retained.

1. In Billing and Cost Management, open **Budgets**, select **My Monthly Cost Budget**, choose **Actions**, and choose **Delete**.
![Delete Budgets](/images/5-Workshop/9.1.jpg)
2. In IAM, open **Roles**, select the roles to remove, and choose **Delete**.
![Delete Roles](/images/5-Workshop/9.2.jpg)
3. In Amazon Aurora and RDS, open **Databases**, select event-rsvp-db, choose **Actions**, and choose **Delete**. Open its endpoints, select the VPC security group, edit its inbound rules, and delete the rules.
![Delete Databases](/images/5-Workshop/9.3.jpg)
![Delete Inbound rules](/images/5-Workshop/9.4.jpg)
![Delete Inbound rules](/images/5-Workshop/9.5.jpg)
4. In DynamoDB, open **Tables**, select event-rsvp-responses, and choose **Delete**.
![Delete Tables](/images/5-Workshop/9.6.jpg)
5. In Lambda, open **Functions**, select event-rsvp-handler`, choose **Actions**, and choose **Delete**.
![Delete Functions](/images/5-Workshop/9.7.jpg)
6. In API Gateway, open **APIs**, select `event-rsvp-api, and choose **Delete**.
![Delete APIs](/images/5-Workshop/9.8.jpg)
7. In Amazon S3, open **Buckets**, select events07-rsvp-bucket, and choose **Delete**.
![Delete Buckets](/images/5-Workshop/9.9.jpg)
8. In CloudWatch Logs, select /aws/lambda/event-rsvp-handler, choose **Actions**, and choose **Delete log group**.
![Delete Log group](/images/5-Workshop/9.10.jpg)

After cleanup, review the Billing dashboard and resource lists for the Region. Confirm that no database, Lambda function, API, bucket, security group, or log group created for the workshop remains unless it is intentionally being kept.