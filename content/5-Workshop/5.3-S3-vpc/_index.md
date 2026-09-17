---
title : "Create a budget alarm"
date : 2024-01-01
weight : 3
chapter : false
pre : " <b> 5.3. </b> "
---

#### Using Billing and Cost Management

In this section, you create a monthly cost budget for the AWS application. The budget helps control spending, warns you when costs exceed the permitted amount, and summarizes the cost of the services in use.

Set a low notification threshold while learning so unexpected usage can be detected early. A budget does not stop resource usage automatically; it sends notifications that allow you to investigate and take action.

![overview](/images/5-Workshop/3.jpg)

1. Select **Budgets** in the left navigation pane, then choose the yellow **Create budget** button on the right.
![Budgets](/images/5-Workshop/3.2.jpg)
2. Select **Monthly cost budget**. When spending exceeds the configured threshold, AWS sends an email notification. You can change the threshold amount.
![Create budgets](/images/5-Workshop/3.3.jpg)
3. After the budget is created, Billing and Cost Management sends an email notification and displays the services in use, their costs, and a monthly chart in the AWS console.
![Billing and Cost Management](/images/5-Workshop/3.1.jpg)

After saving the budget, check that the email address is correct and that the budget status is active. Review the cost dashboard regularly during the workshop, especially after creating databases, Lambda functions, API integrations, or storage resources.

