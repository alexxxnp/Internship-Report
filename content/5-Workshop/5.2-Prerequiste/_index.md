---
title : "Preparation steps"
date : 2024-01-01
weight : 2
chapter : false
pre : " <b> 5.2. </b> "
---

#### Complete the following preparation steps in order before starting the workshop:

1. **Create an account and configure access**

   Sign in to the AWS Management Console with an Administrator account or an account that can create and manage the resources used in the lab. Select the recommended Region, such as `ap-southeast-1` (Singapore), or the Region specified for the workshop.

2. **Install the required tools**

   Install and configure these tools locally or in AWS Cloud9:
   * **AWS CLI:** Install the latest version and run `aws configure` to set the access key, secret key, and default Region.
   * **Git:** Run `git --version` to confirm that Git is ready to clone the repository.
   * **Runtime:** Install Node.js, Python, or Java according to the sample application's requirements.

   Keep the project source code in a local Git repository. Do not place long-term AWS credentials in source files or commit them to GitHub. Use an IAM role, temporary credentials, or the AWS CLI credential profile recommended for your environment.

3. **Required VPCs**
![VPCs](/images/5-Workshop/2.1.jpg)

4. **Required subnets**
![Subnets](/images/5-Workshop/2.2.jpg)

5. **Required inbound rules**
![Inbound rules](/images/5-Workshop/2.3.jpg)

Before continuing, confirm that the selected Region is consistent across the AWS Console, CLI, and all services. Also verify that the VPC and subnet identifiers match the architecture diagram and that inbound rules are limited to the ports required by the lab.