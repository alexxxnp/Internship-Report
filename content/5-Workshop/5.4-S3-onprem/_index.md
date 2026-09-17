---
title : "Amazon RDS"
date : 2024-01-01
weight : 4
chapter : false
pre : " <b> 5.4. </b> "
---

#### Overview

In this section, you create a database with Amazon Aurora and Amazon RDS.
Amazon RDS provides managed relational database operations, while the selected network settings determine whether the database is publicly reachable or isolated inside the VPC. For this workshop, review the connectivity and security settings carefully before creating the instance.
![Aurora and RDS](/images/5-Workshop/4.jpg)
1. Choose **Create database** to create a new database.
![Create database](/images/5-Workshop/4.1.jpg)
2. Select **Full configuration**.
![Create database](/images/5-Workshop/4.2.jpg)
3. Select **MySQL**.
![Create database](/images/5-Workshop/4.3.jpg)
4. Under **Choose a database creation method**, select **Easy create** for a personal project. In **Configuration**, select **Easy tier** and enter the name in **DB instance identifier**.
![Create database](/images/5-Workshop/4.4.jpg)
5. Keep the master username as `admin`. Under **Credentials management**, keep **Self managed** if you want to provide a password.
![Create database](/images/5-Workshop/4.5.jpg)
6. Choose **Create database**.
![Create database](/images/5-Workshop/4.6.jpg)

After creation, wait until the database status becomes **Available**. Record the endpoint only for approved internal testing, verify that the security group allows traffic from the intended application source, and avoid enabling public access unless the lab explicitly requires it.