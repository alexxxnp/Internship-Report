---
title : "Amazon S3"
date : 2024-01-01
weight : 8
chapter : false
pre : " <b> 5.8. </b> "
---
#### Amazon S3

Amazon S3 (Simple Storage Service) is reliable, nearly unlimited object storage. It stores the compiled frontend files, including HTML, CSS, JavaScript, and images, and can work with AWS Amplify to distribute a Single Page Application. It also stores large event images so that DynamoDB only needs to store lightweight text and numeric data.

Use a globally unique bucket name, enable encryption, and keep public access blocked unless a specific hosting design requires otherwise. Separate frontend assets, event images, and temporary files into clear prefixes so they are easier to manage and remove.

1. Open Amazon S3 and choose the yellow **Create bucket** button.
![Find Amazon S3](/images/5-Workshop/8.jpg)
2. Enter a name in **Bucket name**.
![Create bucket](/images/5-Workshop/8.1.jpg)
3. Choose **Create bucket**.
![Create bucket](/images/5-Workshop/8.2.jpg)
4. Upload the frontend code from VS Code by choosing **Upload** and selecting the required files.
![Upload code](/images/5-Workshop/8.3.jpg)
5. Open the banner location and upload the event image. This image is referenced by the backend Lambda code.
![Upload event image](/images/5-Workshop/8.4.jpg)
6. Use AWS Amplify to change the link name and choose **Deploy updates** to add the frontend from VS Code. The frontend can also be retrieved from Amazon S3.
![AWS Amplify](/images/5-Workshop/8.5.jpg)
![AWS Amplify](/images/5-Workshop/8.6.jpg)

After uploading, open the deployed URL and verify that the frontend loads, images resolve, API calls succeed, and browser CORS rules behave as expected. Keep the source code in Git and use Amplify deployment history to identify or roll back a faulty update.
