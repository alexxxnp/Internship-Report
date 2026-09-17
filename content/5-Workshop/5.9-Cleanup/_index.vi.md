---
title : "Dọn dẹp tài nguyên"
date : 2024-01-01
weight : 9
chapter : false
pre : " <b> 5.9. </b> "
---

#### Dọn dẹp tài nguyên

Xin chúc mừng bạn đã hoàn thành xong lab này!
Trong lab này, bạn đã học về các mô hình kiến trúc để truy cập Amazon S3 mà không sử dụng Public Internet.
Hãy xóa tài nguyên trong đúng Region đã sử dụng trong workshop. Trước khi xóa database, table, bucket hoặc log group, hãy xác nhận dữ liệu không còn cần thiết và tải xuống các file hoặc log cần lưu giữ.


#### Dọn dẹp
1. Tìm Budgets trong Billing and Cost Management, tích vào My Monthly Cost Budget rồi chọn Actions sau đó nhấn Delete.

![Delete Budgets](/images/5-Workshop/9.1.jpg)

2. Tìm Roles trong IAM sau đó tích vào những Roles muốn xóa, sau đó nhấn Delete
![Delete Roles](/images/5-Workshop/9.2.jpg)
3. Tìm Databases trong Aurora and RDS, tích vào chọn event-rsvp-db sau đó nhấn nút Actions rồi chọn Delete.
![Delete Databases](/images/5-Workshop/9.3.jpg)
Nhấn vào  event-rsvp-db sau đó nhấn Endpoints tìm VPC security groups trong Security. Tích vào VPC đó rồi nhấn Actions chọn Edit inbound rules sau đó nhấn Delete.
![Delete Inbound rules](/images/5-Workshop/9.4.jpg)
![Delete Inbound rules](/images/5-Workshop/9.5.jpg)
4. Tìm Tables trong DynamoDB rồi tích chọn event-rsvp-responses sau đó nhấn Delete.
![Delete Tables](/images/5-Workshop/9.6.jpg)
5. Tìm Functions trong Lambda tích chọn event-rsvp-handler sau đó nhấn Actions rồi chọn Delete.
![Delete Functions](/images/5-Workshop/9.7.jpg)
6. Tìm APIs trong API GateWay tích chọn event-rsvp-api sau đó nhấn Delete.
![Delete APIs](/images/5-Workshop/9.8.jpg)
7. Tìm Buckets trong Amzon S3 tích chọn events07-rsvp-bucket sau đó nhấn Delete.
![Delete Buckets](/images/5-Workshop/9.9.jpg)
8. Tìm Log Management trong CloudWatch tích chọn /aws/lambda/event-rsvp-handler rồi nhấn Actions sau đó chọn Delete log group.
![Delete Log group](/images/5-Workshop/9.10.jpg)
Sau khi dọn dẹp, kiểm tra Billing dashboard và danh sách tài nguyên trong Region. Xác nhận không còn database, Lambda function, API, bucket, security group hoặc log group nào được tạo cho workshop, trừ những tài nguyên bạn cố ý giữ lại.