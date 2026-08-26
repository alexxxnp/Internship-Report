---
title: "Worklog Tuần 11"
date: 2026-08-10
weight: 11
chapter: false
pre: " <b> 1.11. </b> "
---
{{% notice warning %}}
⚠️ **Lưu ý:** Các thông tin dưới đây chỉ nhằm mục đích tham khảo, vui lòng **không sao chép nguyên văn** cho bài báo cáo của bạn kể cả warning này.
{{% /notice %}}

### Mục tiêu tuần 11:
* Lập kế hoạch, thiết kế và triển khai Dự án tổng hợp (Capstone Project).
* Áp dụng mô hình chuẩn 3-Tier Architecture trên AWS (Web Tier, App Tier, DB Tier).
* Tích hợp các dịch vụ đã học thành một sản phẩm ứng dụng web hoàn chỉnh, có khả năng mở rộng cao.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Phân tích yêu cầu bài toán dự án thực tế <br> - Vẽ sơ đồ kiến trúc hệ thống chuẩn AWS 3-Tier Architecture (S3/CloudFront + ALB/EC2 + RDS) | 10/08/2026 | 10/08/2026 | [https://aws.amazon.com/blogs/architecture/web-application-hosting-in-the-aws-cloud/](https://aws.amazon.com/blogs/architecture/web-application-hosting-in-the-aws-cloud/) |
| 3 | - Triển khai lớp Mạng & Bảo mật (VPC, Public/Private Subnets, Internet Gateway, NAT Gateway, Security Groups) | 11/08/2026 | 11/08/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Scenario2.html](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Scenario2.html) |
| 4 | - Triển khai lớp Dữ liệu (Database Tier): Khởi tạo Amazon RDS MySQL trong Private Subnet <br> - Triển khai lớp Ứng dụng (App Tier): Cấu hình EC2 Instances trong Auto Scaling Group kết nối RDS | 12/08/2026 | 12/08/2026 | [https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Tutorials.WebServerDB.CreateWebServer.html](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Tutorials.WebServerDB.CreateWebServer.html) |
| 5 | - Triển khai lớp Giao diện & Phân phối (Web Tier): Đặt Application Load Balancer phía trước EC2 và CloudFront phân phối Frontend | 13/08/2026 | 13/08/2026 | [https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancer-getting-started.html](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancer-getting-started.html) |
| 6 | - Đóng gói ứng dụng web, cấu hình kết nối giữa các tầng và chạy thử nghiệm chức năng toàn hệ thống | 14/08/2026 | 14/08/2026 | [https://aws.amazon.com/getting-started/hands-on/build-web-app-s3-lambda-api-gateway-dynamodb/](https://aws.amazon.com/getting-started/hands-on/build-web-app-s3-lambda-api-gateway-dynamodb/) |

### Kết quả đạt được tuần 11:
* Thiết kế thành công sơ đồ kiến trúc đám mây chuẩn 3-Tier Architecture sẵn sàng cao và an toàn.
* Triển khai tích hợp mượt mà các dịch vụ: Custom VPC, RDS MySQL, EC2 ASG, ALB, S3 và CloudFront.
* Vận hành hoàn chỉnh hệ thống ứng dụng Web 3 tầng thực tế trên môi trường cloud.