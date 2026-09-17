---
title : "Test & validation"
date : 2024-01-01
weight : 10
chapter : false
pre : " <b> 5.10. </b> "
---
#### Test & validation

1. Sending Requests (Trigger Test)
Use Postman or cURL to send HTTP requests (GET, POST) to the API Gateway Endpoint.

Test the registration/RSVP flow successfully, send a valid payload, and simulate duplicate or misformatted requests.
A successful registration will display the message: "RSVP recorded successfully!", while a failed registration will display "You have already RSVPed for this event with this email!". Additionally, you can enter whether the person attended or not.

![Test [Postman]](/images/5-Workshop/10.1.jpg)
![Test [Postman]](/images/5-Workshop/10.2.jpg)
This also shows the number of people who registered or did not attend the event.

![Test [Postman]](/images/5-Workshop/10.3.jpg)
Information about the registered participants is also displayed here.

![Test [Postman]](/images/5-Workshop/10.4.jpg)
The rest is a list of events and adding events.

![Test [Postman]](/images/5-Workshop/10.5.jpg)
![Test [Postman]](/images/5-Workshop/10.6.jpg)
2. View Logs (CloudWatch Logs)
Access Amazon CloudWatch Logs to check detailed logs from AWS Lambda execution functions.

If an error occurs, it will be reported in Amazon CloudWatch.

![Amazon CloudWatch](/images/5-Workshop/10.7.jpg)
3. Check Metrics (Monitoring)
Observe the dashboard on Amazon CloudWatch Metrics.

API Gateway: Test results on Amazon CloudWatch Metrics confirm that the API Gateway and Lambda systems operate PASSED according to technical standards: error indices 4xx and 5xx are completely zero, request traffic (Count) is received and processed accurately, and response latency (IntegrationLatency) is stable after the initial cold start, ensuring high availability and reliability for the entire Serverless architecture.

![API Gateway](/images/5-Workshop/10.8.jpg)
AWS Lambda: Visual test results on Amazon CloudWatch Metrics for the AWS Lambda function event-rsvp-handler achieved a PASSED status: the processing time (Duration) recorded an initial consumption of approximately 1.1k ms (due to Cold Start) and quickly decreased to optimal levels in subsequent calls, while operational risk indicators including system errors and bottlenecks remained absolutely at 0, confirming that the backend processes data stably and meets performance standards well.
![AWS Lambda](/images/5-Workshop/10.9.jpg)
Dynamo DB CloudWatch Metrics measurement results for the DynamoDB event-rsvp-responses table reached PASSED status: the system consumes read/write resources (ConsumedReadCapacityUnits & ConsumedWriteCapacityUnits) optimally and as expected for each actual data query, and the conditional check failed requests index is completely zero, confirming that the database processes RSVP records correctly and does not encounter any data conflicts.

![Dynamo DB](/images/5-Workshop/10.10.jpg)
4. Chaos & Failure Testing
### Chaos & Failure Testing Results Table

| No. | Test Scenario | Action | Expected HTTP Status | CloudWatch Metrics & Logs | Status |

| :--- | :--- | :--- | :---: | :--- | :---: |

| **1** | **Validate Payload & CORS** | Sending a POST /rsvp request missing a required field (email) or sending an incorrect JSON format. | 400 Bad Request | ApiGateway Metric 4XXError spiked. No error logs were generated at the Lambda layer. | **PASSED** |

| **2** | **Throttling Mechanism (Rate Limit)** | Firing 100+ requests/second using Postman Runner exceeded the API Gateway Stage's allowed limit. | 429 Too Many Requests | ApiGateway Metric 4XXError spiked; Lambda Throttles recorded $0$ due to API Gateway blocking from the upper layer. | **PASSED** |

| **3** | **Database Error Simulation (Retry/Exception)** | Incorrectly changed the DynamoDB table name in the Lambda environment variable to simulate a DB connection loss. | 500 Internal Server Error | Metric ApiGateway 5XXError and Lambda Errors showed spikes. Log Group accurately recorded the details of the ResourceNotFoundException exception. | **PASSED** |

5. Expected Results
On Postman, after activation, "200 ok" appears, indicating good operation.

![Postman](/images/5-Workshop/10.11.jpg)
Data verification was performed after successfully sending a request from Postman. The result showed success.

![Dynamo DB](/images/5-Workshop/10.12.jpg)
Log Security Verification: CloudWatch Logs' Log Stream audit results confirm the system meets security standards (PASSED): the entire log content only records standard system parameters (RequestId, Duration, Memory) and public API paths (routeKey), completely preventing the leakage of sensitive infrastructure information (such as AWS Access Keys or Role ARN) and not printing plain-text personal user information, ensuring strict adherence to information security and risk management principles.

![Amazon CloudWatch](/images/5-Workshop/10.13.jpg)