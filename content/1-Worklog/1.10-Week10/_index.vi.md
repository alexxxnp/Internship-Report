---
title: "Worklog Tuần 10"
date: 2026-08-03
weight: 10
chapter: false
pre: " <b> 1.10. </b> "
---


### Mục tiêu tuần 10:
* Học cách giám sát hệ thống với Amazon CloudWatch và ghi nhận log ứng dụng.
* Thiết lập các cảnh báo tự động (Alarms) khi hạ tầng gặp sự cố hoặc vượt ngưỡng tài nguyên.
* Cấu hình Dashboard trực quan hóa hiệu năng máy chủ và ứng dụng.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Tìm hiểu dịch vụ Amazon CloudWatch: Metrics, Logs, Alarms, Dashboards <br> - Khái niệm CloudWatch Agent thu thập log từ EC2 Instance | 03/08/2026 | 03/08/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/WhatIsCloudWatch.html) |
| 3 | - Tìm hiểu dịch vụ gửi thông báo Amazon Simple Notification Service (SNS) <br> - Tích hợp CloudWatch Alarms với SNS Topic để gửi Email thông báo | 04/08/2026 | 04/08/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/US_SetupSNS.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/US_SetupSNS.html) |
| 4 | - **Thực hành:** <br>&emsp; + Cài đặt và cấu hình CloudWatch Agent trên EC2 Instance <br>&emsp; + Đẩy system log (Nginx access log/syslog) về CloudWatch Logs Group | 05/08/2026 | 05/08/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/install-CloudWatch-Agent-on-EC2-Instance.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/install-CloudWatch-Agent-on-EC2-Instance.html) |
| 5 | - **Thực hành Cảnh báo:** <br>&emsp; + Tạo CloudWatch Alarm cảnh báo khi CPU EC2 vượt quá 80% <br>&emsp; + Cấu hình gửi Email cảnh báo tự động qua Amazon SNS | 06/08/2026 | 06/08/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ConsoleAlarms.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ConsoleAlarms.html) |
| 6 | - Tạo CloudWatch Dashboard hiển thị tổng quan các thông số CPU, RAM, Network I/O, Disk Space <br> - Truy vấn log ứng dụng nhanh chóng bằng CloudWatch Logs Insights | 07/08/2026 | 07/08/2026 | [https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AnalyzingLogData.html) |

### Kết quả đạt được tuần 10:
* Xây dựng hệ thống giám sát và tập trung hóa log hệ thống (Centralized Logging) chuyên nghiệp.
* Thiết lập cảnh báo tự động thông báo tức thì qua Email khi hạ tầng gặp dấu hiệu bất thường.
* Thiết kế CloudWatch Dashboard trực quan hỗ trợ theo dõi tình trạng hoạt động toàn bộ hệ thống real-time.