---
title : "Security measures used"
date : 2024-01-01
weight : 11
chapter : false
pre : " <b> 5.11. </b> "
---
#### Security measures used

During the implementation of this project, several security controls were applied to protect the system, data, and AWS resources. These settings were not just theoretical; they were configured directly in the workshop and can be observed in the actual architecture.

1. **IAM least privilege**  
   Lambda, API Gateway, and related EC2 resources were granted only the minimum permissions needed for their responsibilities. For example, a Lambda function that handles RSVP requests only needs access to DynamoDB and CloudWatch Logs, not full administrative privileges across the entire AWS account. This reduces the impact of accidental mistakes or malicious access.

2. **IAM Role instead of hardcoded access keys**  
   IAM Roles were assigned to Lambda and EC2 so they could securely access required services without embedding Access Key and Secret Key values directly in the source code. For example, an EC2 instance can read data from S3 through an IAM Role without exposing long-term credentials in configuration files. This is a critical measure to avoid leaking sensitive credentials in GitHub or other public places.

3. **Network isolation with VPC, Private Subnet, and Security Groups**  
   Resources that require network isolation, such as RDS and backend components, were placed in private subnets and restricted with security group rules. DynamoDB is a managed service and does not reside in a subnet; private access to it is controlled through a VPC Endpoint and IAM policies. This reduced the attack surface and improved isolation between components.

4. **Access control and public exposure restrictions using CORS, VPC Endpoint, and Block Public Access**  
   CORS was limited to trusted frontend domains, and VPC Endpoint helped internal services connect to AWS resources without using the public internet. In addition, S3 was configured with Block Public Access to prevent public exposure of stored files. This minimized the risk of unauthorized access and data leakage.

5. **Monitoring and auditing with CloudWatch Logs and CloudTrail**  
   Requests, failures, and access events were logged in CloudWatch Logs so the team could review API behavior and diagnose problems. For example, if a request fails validation or a Lambda function throws an error, the log stream shows the cause and the related request data. CloudTrail also supports access auditing and helps detect abnormal activity early.

6. **MFA for administrative accounts**  
   Administrative users were protected with MFA, adding an extra layer of verification beyond the password. For example, even if an account password were exposed, an attacker would still need the second authentication factor to log in. This significantly strengthens account security.

#### Implementation and testing evidence

The controls above were checked through practical scenarios in the workshop rather than only by viewing settings in the AWS console:

1. **Valid request and data-access verification**  
   A valid request sent from Postman to API Gateway returned `200 OK` and a successful RSVP message. The resulting record was then checked in DynamoDB to confirm that Lambda stored the expected data. The evidence is shown in [Test and validation](../5.10-Test-validation/).

2. **Invalid request and access-limit verification**  
   A payload with a missing required field or invalid format returned `400 Bad Request`. Sending requests above the configured threshold returned `429 Too Many Requests`. This shows that invalid or excessive requests were rejected at the API Gateway layer before creating unnecessary load on Lambda.

3. **Backend failure and logging verification**  
   When the DynamoDB table name was intentionally changed to an invalid value, the system returned `500 Internal Server Error`, Lambda recorded the failure, and CloudWatch Logs showed the `ResourceNotFoundException` cause. This confirms that failures could be detected and traced.

4. **Operational metrics and sensitive-data verification**  
   CloudWatch Metrics recorded `4XXError`, `5XXError`, `Errors`, and `Throttles` for API Gateway and Lambda. The log review also confirmed that logs contained operational fields such as `RequestId`, `Duration`, and `Memory`, without exposing Access Keys or personal data in plain text.

5. **S3 public-access verification**  
   S3 Block Public Access was enabled before uploading the source code and event images. The frontend was still deployed and tested through its Amplify URL, while the bucket itself was not opened for direct public access. This separates application distribution from direct bucket permissions.

Overall, the solution used a layered security model based on least privilege, IAM roles, network restriction, controlled access, monitoring, and MFA. These measures made the AWS architecture more secure and more aligned with real production environments.
