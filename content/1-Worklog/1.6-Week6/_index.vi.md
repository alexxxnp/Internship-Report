---
title: "Worklog Tuần 6"
date: 2026-07-06
weight: 6
chapter: false
pre: " <b> 1.6. </b> "
---


### Mục tiêu tuần 6:
* Hiểu cơ chế cân bằng tải Elastic Load Balancing (ELB / ALB) và tự động mở rộng Auto Scaling Group (ASG).
* Xây dựng hệ thống High Availability (Sẵn sàng cao) và Fault Tolerance (Chịu lỗi).
* Cấu hình Health Checks và tự động điều chỉnh số lượng máy chủ theo lưu lượng truy cập.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Tìm hiểu các loại Load Balancer: Application Load Balancer (ALB), Network Load Balancer (NLB) <br> - Khái niệm Target Group, Health Checks, Path-based Routing | 06/07/2026 | 06/07/2026 | [https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/introduction.html) |
| 3 | - Tìm hiểu Amazon EC2 Auto Scaling Group (ASG) <br> - Khái niệm Launch Template, Scaling Policies (Target Tracking, Step Scaling) | 07/07/2026 | 07/07/2026 | [https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html) |
| 4 | - **Thực hành ALB:** <br>&emsp; + Tạo Application Load Balancer trên 2 Availability Zones <br>&emsp; + Tạo Target Group và gắn 2 EC2 Instances <br>&emsp; + Kiểm tra cơ chế chia tải HTTP traffic | 08/07/2026 | 08/07/2026 | [https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-application-load-balancer.html](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-application-load-balancer.html) |
| 5 | - **Thực hành ASG:** <br>&emsp; + Khởi tạo Launch Template chứa User Data script cài đặt Web App <br>&emsp; + Khởi tạo Auto Scaling Group liên kết với ALB <br>&emsp; + Cấu hình số lượng Instance: Desired=2, Min=2, Max=4 | 09/07/2026 | 09/07/2026 | [https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html](https://docs.aws.amazon.com/autoscaling/ec2/userguide/AutoScalingGroup.html) |
| 6 | - Kiểm thử tải (Stress test CPU) để kiểm tra khả năng tự động Scale-out và Scale-in của ASG <br> - Giả lập sự cố ngắt 1 EC2 Instance để kiểm tra ALB Health Check tự thay thế máy chủ mới | 10/07/2026 | 10/07/2026 | [https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html) |

### Kết quả đạt được tuần 6:
* Xây dựng thành công kiến trúc ứng dụng sẵn sàng cao (High Availability) trên nhiều Availability Zones (Multi-AZ).
* Phân phối lưu lượng truy cập cân bằng thông qua Application Load Balancer.
* Tự động hóa việc mở rộng/thu hẹp máy chủ EC2 linh hoạt bằng Auto Scaling Group dựa trên mức độ sử dụng tài nguyên thực tế.