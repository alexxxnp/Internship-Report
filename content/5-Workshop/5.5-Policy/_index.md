---
title: "Amazon DynamoDB"
date: 2024-01-01
weight: 5
chapter: false
pre: " <b> 5.5. </b> "
---

#### Overview
In this section, we create the DynamoDB tool. RSVP Data Management & Retrieval (Explore table items): Click the orange "Explore table items" button in the upper corner to view, search, edit, or delete the list of customer records registered for RSVP.
Index & Performance Configuration (Indexes / Monitor): Create sub-indexes (GSI/LSI) to speed up data queries and view CloudWatch graphs of the application's real-time Read/Write capacity.

Data Protection & Recovery (Backups / PITR): Set up automatic real-time backups (Point-in-time recovery - PITR) or create manual backups to prevent data loss from user event registrations.

Use a simple partition key that supports the way the application retrieves RSVP records. Before changing or deleting an item, confirm that you are working in the correct Region and table. For production workloads, review capacity mode, encryption, access policies, backup retention, and least-privilege IAM permissions.

1. Find the DynamoDB tool page as shown in the image.

![DynamoDB](/images/5-Workshop/5.jpg)
2. We create the tool by clicking on the word "Table" in the left column, then clicking the "Create table" button on the right to create the DynamoDB tool.

![Create table](/images/5-Workshop/5.1.jpg)
3. After entering the creation page, we name the tool in "Table name" and create a Partition key.

![Create name and Partition key](/images/5-Workshop/5.2.jpg)
4. Finally, we create the tool by clicking the "Create table" button.

![Create table](/images/5-Workshop/5.3.jpg)

After the table is created, use **Explore table items** to confirm that the table is available. Add a test item only when needed, verify the partition-key value, and remove test data after validation. Monitor read and write activity in CloudWatch and enable PITR before storing important registration data.