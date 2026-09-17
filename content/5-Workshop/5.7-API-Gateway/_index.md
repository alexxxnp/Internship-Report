---
title : "Amazon API Gateway"
date : 2024-01-01
weight : 7
chapter : false
pre : " <b> 5.7. </b> "
---
#### Amazon API Gateway

Amazon API Gateway is the gateway between the frontend web application and the AWS Lambda backend in this serverless architecture. It receives user requests, validates them, forwards them to Lambda, and returns the result.

Define routes and methods deliberately, keep CORS limited to trusted frontend origins, and avoid exposing management endpoints. Use consistent status codes and response bodies so the frontend can handle success and error cases predictably.

1. In API Gateway, select **APIs**, choose **Create API**, find **HTTP API**, and choose **Build**. Enter an API name, select Lambda in **Integrations**, choose the existing function, and choose **Next**.
![Configure API](/images/5-Workshop/7.jpg)
2. In **Configure routes**, add each route and choose the available integration target, then choose **Next**.
![Configure routes](/images/5-Workshop/7.1.jpg)
3. Open the API, select **CORS**, and add the headers that allow access.
![CORS](/images/5-Workshop/7.2.jpg)
4. Use Postman to test the API and find errors.
![Postman](/images/5-Workshop/7.3.jpg)
5. Errors are sent to CloudWatch.
![CloudWatch](/images/5-Workshop/7.4.jpg)
6. A VPC endpoint provides a private route from resources in a private subnet to AWS services without using the public Internet. Open **VPC > Endpoints**, choose **Create endpoint**, search for DynamoDB in **Services**, select the default VPC, enable the policy option, and create the endpoint.
![Create endpoint](/images/5-Workshop/7.5.jpg)
![Create endpoint](/images/5-Workshop/7.6.jpg)
![Create endpoint](/images/5-Workshop/7.7.jpg)

After deployment, copy the API invoke URL and test every route with Postman. Check successful responses, validation errors, unauthorized requests, CORS behavior, Lambda errors, and CloudWatch logs before connecting the API to the frontend.
