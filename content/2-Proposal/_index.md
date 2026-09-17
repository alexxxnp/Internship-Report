---
title: "Proposal"
date: 2024-01-01
weight: 2
chapter: false
pre: " <b> 2. </b> "
---


# AWS Event Management and RSVP Platform
## A serverless AWS platform for community event management and registration

### 1. Executive summary

The AWS User Group PH Events project is a website that supports the management of and registration for technology events in the AWS community in the Philippines. The platform simplifies the entire process from learning about an event to attending the workshop: users can view meetup information, click RSVP to immediately receive an electronic ticket containing a personal QR check-in code, and look up an intuitive venue map through the Venue Navigator. Designed as a modern Single Page Application (SPA) combined with Serverless cloud technologies such as AWS Lambda, DynamoDB, and Amplify, the system runs smoothly, loads quickly, and scales easily when many students or developers access it at the same time.

### 2. Problem statement

**Current situation:** When organizing technology events such as AWS User Group PH events, manual management with forms such as Google Forms creates duplicate data, ticket overbooking, and no real-time control over registration volume. Without a personalized electronic ticket system, reception check-in becomes congested because staff must manually reconcile lists. In addition, complex floor plans in large offices such as AWS Level 26 make it difficult for attendees to find the stage, networking, or tea-break areas, while maintaining traditional servers 24/7 creates significant infrastructure waste.

**Solution:** The project proposes a modern SPA combined with a Serverless architecture on the AWS cloud. The system uses AWS Lambda to automate RSVP business logic, stores data immediately in Amazon DynamoDB, and generates a unique QR code for every electronic ticket. The interface is modular, with core features such as Events Hub, My Passes, Resources, and especially Venue Navigator, which displays an interactive two-column floor plan with an intuitive directions pop-up. All source code is managed on GitHub and automatically deployed through AWS Amplify CI/CD.

**Benefits and return on investment (ROI):** The Serverless solution is expected to reduce infrastructure operating costs by approximately 80-90% compared with always-on traditional servers because users pay for actual usage. It is also designed to scale for thousands of registrations at the same time. QR code scanning is targeted to reduce check-in time by approximately 70%, helping address queues at the event. These percentages are project targets that should be validated with measurements after implementation. The reusable platform can be customized for future events without rebuilding the application from scratch.

### 3. Solution architecture

The AWS User Group Events Management system uses a multi-tier web application architecture with Serverless services. This optimizes costs and scales automatically with traffic. The frontend is developed in Visual Studio Code (VS Code), while AWS Amplify and Amazon S3 host the Single Page Application (SPA), static files, and deployment workflow. User REST API requests are securely received by Amazon API Gateway and forwarded to AWS Lambda functions that handle RSVP registration. Postman is used to test APIs and troubleshoot system errors. Amazon DynamoDB provides fast NoSQL storage for real-time information, while Amazon RDS/Aurora manages relational event and user data. RDS/Aurora is placed in private subnets inside Amazon VPC. DynamoDB is accessed through its managed service endpoint or a VPC endpoint rather than being placed in a subnet. Finally, Amazon CloudWatch monitors performance and logs, and AWS Billing and Cost Management provides budget alarms to control infrastructure costs.

![AWS Cloud](/images/5-Workshop/2.4.jpg)

*AWS services used*

The project combines the Serverless model with core AWS cloud services to provide high availability, security, and cost efficiency. Frontend code is developed in VS Code, while AWS Amplify and Amazon S3 host the SPA, store static assets such as banner images and logos, and automate deployment. Client requests are sent through Amazon API Gateway, which validates and securely routes them to the backend. AWS Lambda functions handle business logic such as adding names, email addresses, and event information. Postman is used to test API errors, validate CORS configuration, and verify response status codes. Event information and registration lists are stored with low latency in Amazon DynamoDB. Amazon CloudWatch provides logging, performance monitoring, and incident detection, while AWS Billing and Cost Management manages the budget and sends cost alerts according to the pay-as-you-go model.

*Component design*

- **Presentation layer:** Frontend code using HTML, Tailwind CSS, and JavaScript is developed in VS Code, managed in GitHub, and connected to AWS Amplify CI/CD.
- **Business logic layer:** API Gateway receives HTTPS requests from the browser, such as `POST /rsvp` and `GET /events`. AWS Lambda functions run Node.js logic and validate email addresses. Postman is required to test every endpoint, find data errors, and detect system failures.
- **Data layer:** Amazon DynamoDB stores key-value data in the Events and Passes/Attendees tables, providing fast queries and automatic scaling.
- **Management and monitoring layer:** CloudWatch collects Lambda and API Gateway logs to monitor registrations and system errors in real time. AWS Billing monitors the actual event costs.

### 4. Technical implementation

*Implementation phases*

The project is divided into four connected phases to ensure stable and timely operation. The first phase initializes the network and storage environment, including an Amazon VPC with private subnets, Amazon DynamoDB tables, and RDS/Aurora databases. In the second phase, the development team builds AWS Lambda functions for RSVP business logic, connects them through Amazon API Gateway, and uses Postman to test and fix API errors. The third phase uses VS Code to build the frontend SPA and hosts it through AWS Amplify. Finally, Amazon CloudWatch and AWS Budgets are configured for load testing, error-log monitoring, and automatic cost control before launch.

*Technical requirements*

The system must meet strict performance, security, and management standards. It uses a Serverless 3-Tier model: Amplify/S3 for presentation, API Gateway/Lambda for business logic, and DynamoDB/RDS for data. RDS and supporting resources are isolated in Amazon VPC private subnets, while DynamoDB is protected with IAM policies and private VPC endpoint access where required. Frontend code must be developed in VS Code and deployed through AWS Amplify. Postman must be used to test errors, validate API endpoints, and verify CORS configuration. The backend must provide low latency for RSVP operations and include AWS Billing budget alarms for cost control.

### 5. Roadmap and milestones

- **Before the internship (Month 0):** Prepare cloud and web development fundamentals, create a GitHub repository, and install VS Code and Postman.
- **Internship (Months 1-3):**
  - **Month 1 - AWS learning and infrastructure:** Learn core AWS services, configure an Amazon VPC with private subnets, create Amazon DynamoDB tables, and configure an RDS/Aurora database.
  - **Month 2 - Backend and frontend design:** Build AWS Lambda functions for RSVP logic, route them through Amazon API Gateway, test API errors with Postman, and develop the SPA in VS Code.
  - **Month 3 - Deployment, automation, and optimization:** Push frontend code to GitHub, connect AWS Amplify for CI/CD, enable CloudWatch logging, and configure automatic AWS Billing budget alarms.
- **After deployment:** Research and evaluate system performance, optimize operating costs, and prepare the final technical report.

### 6. Budget estimate

See the [AWS Pricing Calculator](https://calculator.aws/#/estimate?id=621f38b12a1ef026842ba2ddfe46ff936ed4ab01) or download the [budget estimate](../attachments/budget_estimation.pdf).

*Infrastructure costs*

- **AWS Amplify:** $0.01/build minute, $0.023/GB storage, and $0.15/GB data (100 build minutes, 5 GB storage, and 15 GB served data).
- **Amazon S3:** $0.023/GB storage plus request costs (5 GB storage and 10,000 PUT/GET requests).
- **Amazon API Gateway:** $1.00 per million requests (1,000,000 HTTP API requests).
- **AWS Lambda:** $0.20 per million requests plus $0.0000166667/GB-second (1,000,000 requests using 128 MB RAM and 300 ms per request).
- **Amazon DynamoDB:** $0.25/GB plus $1.25/M WCU and $0.25/M RCU (25 GB storage with on-demand reads and writes).
- **Amazon CloudWatch:** $0.50/GB ingested plus $0.03/GB stored (5 GB of logs ingested and stored).
- **AWS Budgets:** The first two alerts are free (automatic cost alerts).

**Total:** At the expected load for a small or medium event, the estimated monthly infrastructure budget is approximately $16.50-$17.00, equivalent to approximately VND 410,000-430,000 per month. This is an estimate based on the assumptions above, not a measured production cost. Actual cost depends mainly on traffic, DynamoDB storage, and CloudWatch log volume.

- **Additional hardware:** None is required for the Serverless design. An existing development computer is a prerequisite, not an AWS operating cost.

### 7. Risk assessment

*Risk matrix*

- **Cost risk:** High impact and medium likelihood. A sudden request spike or DDoS attack could exceed the estimated budget.
- **Performance risk:** Medium impact and low likelihood. A sudden increase in RSVPs could overload API Gateway or reach DynamoDB limits.
- **Security risk:** High impact and low likelihood. An exposed API or incorrect IAM/CORS configuration could cause unauthorized access or data inconsistency.

*Mitigation strategies*

- **Cost control:** Set an AWS Budgets alert at $1.00 and configure a rate limit on API Gateway.
- **Permissions and scaling:** Use DynamoDB On-Demand for automatic scaling and apply least-privilege IAM permissions to Lambda.
- **Testing and error prevention:** Thoroughly test error scenarios with Postman, validate input data, and allow CORS only for the Amplify domain.

*Contingency plan*

- **Cost interruption handling:** When an alert is received, inspect CloudWatch logs for abnormal Lambda or API activity and disable or throttle it promptly.
- **Data backup:** Enable DynamoDB Point-in-Time Recovery (PITR) so RSVP data can be restored after an incident.
- **Service recovery:** Keep the source code in GitHub so the frontend can be moved to Vercel/Netlify or the API can temporarily use mock data if AWS Amplify fails.

### 8. Expected outcomes

*Technical improvements:* The project will successfully build an optimized Serverless 3-Tier infrastructure with low latency and automatic scaling through AWS Lambda and DynamoDB. Development will use automated GitHub-to-AWS Amplify CI/CD, Postman API error testing, and layered security in Amazon VPC.

*Long-term value:* At very low or idle traffic, the variable-cost portion may be approximately $0.50-$1.00 per month, while the event-load estimate above is approximately $16.50-$17.00 per month. The reusable infrastructure template can scale to larger events and later integrate email notifications or automated data analysis.

### 9. Reflection & Future Development

*Challenges Encountered:*
During implementation, the team encountered several key obstacles such as connecting and configuring multiple AWS services simultaneously (API Gateway, Lambda, DynamoDB, VPC, Amplify), difficulties in debugging API and CORS errors, and challenges regarding operational costs and access security. Additionally, phased deployment planning required meticulous attention to detail to avoid errors during system release.

*Solution:* The team divided the workflow into clear modules, starting with infrastructure, then backend, then frontend, and finally supervisory testing. Each step was thoroughly tested using Postman, CloudWatch Logs, and the AWS Management Console. To address security and cost issues, the team applied the least privilege principle for IAM, limited CORS to trusted domains, and implemented budget alerts to control resources during testing.

*Level of self-made work:*  
The project is not only a copied template; it was customized to fit the actual requirements and goals of the team. I added new features, adjusted the service structure to better match the event workflow, modified the input and data model to fit a real registration scenario, and used different testing methods to validate both the success flow and the error flow. Examples include QR ticket generation, attendee management, and event-level customization instead of simply deploying a basic template.

*Future Development Directions:*
The project can be further expanded to integrate automated email/SMS notification systems, statistical reporting of registrations and event performance, and the addition of an administrative dashboard for organizers. Furthermore, the system can be developed into a general platform for various events, supporting QR check-in management, optimizing guest experience, and integrating AI-powered data analytics to improve future operational decisions.