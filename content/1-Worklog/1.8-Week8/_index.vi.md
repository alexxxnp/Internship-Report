---
title: "Worklog Tuần 8"
date: 2026-07-20
weight: 8
chapter: false
pre: " <b> 1.8. </b> "
---


### Mục tiêu tuần 8:
* Học về mạng phân phối nội dung Amazon CloudFront (CDN) và dịch vụ quản lý tên miền Amazon Route 53.
* Tối ưu tốc độ truyền tải nội dung web tĩnh và bảo mật SSL/TLS với AWS Certificate Manager (ACM).
* Cấu hình Custom Domain Name kết nối với hạ tầng AWS.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Tìm hiểu mạng phân phối nội dung Amazon CloudFront (CDN), Edge Locations, Caching Behavior <br> - Phân biệt Origin types: S3 Bucket, ALB, Custom Origin | 20/07/2026 | 20/07/2026 | [https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html) |
| 3 | - Tìm hiểu Amazon Route 53: Hosted Zones, DNS Records (A, CNAME, ALIAS) <br> - Học các Routing Policies: Simple, Weighted, Latency, Failover | 21/07/2026 | 21/07/2026 | [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/welcome-dns-service.html) |
| 4 | - **Thực hành:** <br>&emsp; + Yêu cầu Chứng chỉ SSL/TLS miễn phí qua AWS Certificate Manager (ACM) <br>&emsp; + Khởi tạo CloudFront Distribution tích hợp với S3 Static Website <br>&emsp; + Cấu hình Origin Access Control (OAC) bảo mật S3 | 22/07/2026 | 22/07/2026 | [https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html) |
| 5 | - **Thực hành Route 53:** <br>&emsp; + Cấu hình Hosted Zone <br>&emsp; + Trỏ DNS Record (Alias Record) từ tên miền về CloudFront Distribution / ALB <br>&emsp; + Kích hoạt truy cập giao thức HTTPS an toàn | 23/07/2026 | 23/07/2026 | [https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-to-cloudfront-distribution.html) |
| 6 | - Đánh giá tốc độ tải trang trước và sau khi qua CloudFront CDN <br> - Thực hành xóa Cache (Invalidation) trên CloudFront khi có cập nhật trang web | 24/07/2026 | 24/07/2026 | [https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Invalidation.html) |

### Kết quả đạt được tuần 8:
* Phân phối thành công Static Website toàn cầu thông qua CloudFront CDN với tốc độ tải nhanh và độ trễ thấp.
* Đảm bảo an toàn bảo mật dữ liệu nhờ chứng chỉ HTTPS mã hóa tự động từ ACM.
* Làm chủ kỹ năng quản trị DNS trên Route 53 và chặn hoàn toàn truy cập public trực tiếp vào S3 nhờ Origin Access Control (OAC).