---
title: "Worklog Tuần 5"
date: 2026-06-29
weight: 5
chapter: false
pre: " <b> 1.5. </b> "
---
{{% notice warning %}}
⚠️ **Lưu ý:** Các thông tin dưới đây chỉ nhằm mục đích tham khảo, vui lòng **không sao chép nguyên văn** cho bài báo cáo của bạn kể cả warning này.
{{% /notice %}}

### Mục tiêu tuần 5:
* Tìm hiểu cơ sở dữ liệu quan hệ Amazon RDS và cơ sở dữ liệu NoSQL Amazon DynamoDB.
* Triển khai, kết nối và cấu hình bảo mật cho Amazon RDS trong hạ tầng Custom VPC.
* Thiết lập kết nối giữa ứng dụng Web backend chạy trên EC2 tới Amazon RDS.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Tìm hiểu tổng quan Amazon RDS (Relational Database Service) <br> - So sánh các Database Engines: PostgreSQL, MySQL, Aurora <br> - Tổng quan Amazon DynamoDB (NoSQL Key-Value store) | 29/06/2026 | 29/06/2026 | [https://docs.aws.amazon.com/rds/](https://docs.aws.amazon.com/rds/) |
| 3 | - Tìm hiểu khái niệm DB Subnet Group, Multi-AZ Deployment, Read Replicas <br> - Nghiên cứu phương pháp bảo mật cơ sở dữ liệu trên Cloud | 30/06/2026 | 30/06/2026 | [https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html) |
| 4 | - **Thực hành:** <br>&emsp; + Tạo DB Subnet Group cho Private Subnets <br>&emsp; + Khởi tạo Amazon RDS MySQL Instance trong Private Subnet <br>&emsp; + Cấu hình Security Group chỉ cho phép kết nối từ EC2 Web Server | 01/07/2026 | 01/07/2026 | [https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateInstance.html](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_CreateInstance.html) |
| 5 | - **Thực hành kết nối:** <br>&emsp; + Dùng DBeaver/MySQL Client từ EC2 hoặc SSH Tunnel để truy cập RDS <br>&emsp; + Khởi tạo schema và thêm dữ liệu mẫu | 02/07/2026 | 02/07/2026 | [https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ConnectToInstance.html](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ConnectToInstance.html) |
| 6 | - Khởi tạo bảng DynamoDB đơn giản và thao tác CRUD qua AWS CLI/Console <br> - So sánh ưu nhược điểm giữa RDS và DynamoDB cho các ứng dụng thực tế | 03/07/2026 | 03/07/2026 | [https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html) |

### Kết quả đạt được tuần 5:
* Hiểu rõ sự khác biệt giữa Relational Database (RDS) và NoSQL (DynamoDB).
* Tạo thành công RDS Instance nằm trong Private Subnet an toàn, hạn chế hoàn toàn truy cập trực tiếp từ công cộng.
* Cấu hình Security Group cho phép kết nối nội bộ tin cậy từ EC2 Instance đến RDS.
* Thao tác thành công các câu lệnh SQL và các thao tác NoSQL cơ bản trên AWS.