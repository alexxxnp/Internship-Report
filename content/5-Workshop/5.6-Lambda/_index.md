---
title : "AWS Lambda"
date : 2024-01-01
weight : 6
chapter : false
pre : " <b> 5.6. </b> "
---
#### AWS Lambda

In this section, create a Lambda function to manage and edit backend code. Open the `event-rsvp-responses` or `event-rsvp-handler` function in the code editor to view or edit the Node.js RSVP logic. Configure environment variables, timeout, memory, and the function's IAM role. Create console test cases and use the Amazon CloudWatch link to monitor error logs.

Keep configuration values such as table names, bucket names, and API URLs in environment variables rather than hard-coding them. Grant the execution role only the permissions required to access DynamoDB, S3, and CloudWatch. If the function runs inside a VPC, verify that its subnets and security groups can reach the required services.

1. Open Lambda, select **Functions** in the left navigation pane, and choose **Create function**.
![Create function](/images/5-Workshop/6.jpg)
2. Enter a name in **Function name**.
![Create function](/images/5-Workshop/6.1.jpg)
3. Choose **Create function**.
![Create function](/images/5-Workshop/6.2.jpg)
4. In **Configuration**, choose **Edit**.
![Edit](/images/5-Workshop/6.5.jpg)
5. Change **Timeout**, which is the maximum time AWS allows a Lambda invocation to run, then choose the orange **Save** button.
![Timeout](/images/5-Workshop/6.6.jpg)
6. Open **Environment variables**, choose **Edit**, update the key-value pairs, and choose **Save**.
![Environment variables](/images/5-Workshop/6.7.jpg)
7. In IAM, open **Roles**, select the `event-rsvp` role, choose **Add permissions**, and assign permissions to the Lambda role.
![Add Permissions](/images/5-Workshop/6.8.jpg)
8. Return to Lambda and edit the VPC. Select the correct VPC and all available subnets. In **Security groups**, select the group whose name contains `default`, then choose **Save**.
![Edit VPC](/images/5-Workshop/6.9.jpg)
![VPC](/images/5-Workshop/6.10.jpg)
9. Add the backend code for names, email addresses, and attendee status.
![Create backend](/images/5-Workshop/6.3.jpg)
10. Add the event information and the logic that changes the banner image stored in Amazon S3.
![Code events](/images/5-Workshop/6.4.jpg)

Test the function with valid data, missing fields, invalid email addresses, and duplicate registrations. Confirm that successful and failed invocations appear in CloudWatch, and review the timeout and memory settings after the first tests.
