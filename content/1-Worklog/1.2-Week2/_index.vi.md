---
title: "Worklog Tuần 2"
date: 2026-06-08
weight: 2
chapter: false
pre: " <b> 1.2. </b> "
---



### Mục tiêu tuần 2:

* Nắm vững kiến thức cốt lõi về mạng căn bản trong AWS (VPC, Subnet, Route Table, Internet Gateway).
* Hiểu và thực hành phân bổ địa chỉ IP, phân tách Public Subnet và Private Subnet.
* Thiết lập môi trường mạng an toàn và triển khai mô hình ứng dụng web căn bản trên AWS.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Tìm hiểu tổng quan Amazon VPC (Virtual Private Cloud) <br> - Học các khái niệm CIDR Block, Subnetting, IPv4/IPv6 <br> - Phân biệt Public Subnet và Private Subnet | 08/06/2026 | 08/06/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html) |
| 3 | - Tìm hiểu cơ chế định tuyến: Route Table, Internet Gateway (IGW), NAT Gateway <br> - Phân biệt Security Group (Stateful) và Network ACL (Stateless) | 09/06/2026 | 09/06/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html) |
| 4 | - **Thực hành:** <br>&emsp; + Khởi tạo Custom VPC <br>&emsp; + Tạo 1 Public Subnet & 1 Private Subnet <br>&emsp; + Tạo và gắn Internet Gateway vào VPC <br>&emsp; + Cấu hình Route Table cho Public Subnet để kết nối Internet | 10/06/2026 | 10/06/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/vpc-subnets-commands-example.html](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-subnets-commands-example.html) |
| 5 | - **Thực hành nâng cao:** <br>&emsp; + Khởi tạo EC2 Instance trong Public Subnet (Cấu hình Elastic IP / Public IP) <br>&emsp; + Cài đặt Nginx/Apache Web Server trên EC2 <br>&emsp; + Cấu hình Security Group mở port 80/443 (HTTP/HTTPS) và port 22 (SSH) | 11/06/2026 | 11/06/2026 | [https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hosting-web-site.html](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hosting-web-site.html) |
| 6 | - Kiểm tra khả năng truy cập Web Server từ môi trường Internet ngoài <br> - Cấu hình NAT Gateway để cho phép EC2 trong Private Subnet đi Internet cập nhật phần mềm | 12/06/2026 | 12/06/2026 | [https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html) |


### Kết quả đạt được tuần 2:

* Tự thiết kế và cấu hình hoàn chỉnh một Custom VPC độc lập trên AWS.
* Hiểu rõ cách chia địa chỉ IP bằng CIDR block và phân tách rõ ràng hạ tầng Public/Private Subnet.
* Thiết lập thành công hệ thống định tuyến (Route Table) và Internet Gateway giúp hạ tầng kết nối ra ngoài Internet an toàn.
* Nắm vững nguyên lý và phân biệt rõ sự khác biệt giữa Security Group và Network ACL.
* Triển khai thành công Web Server (Nginx/Apache) trên EC2 instance thuộc Public Subnet và truy cập được qua IP Public/Elastic IP.
* Cấu hình NAT Gateway hỗ trợ tài nguyên thuộc Private Subnet ra Internet tải package an toàn mà không bị trực tiếp tấn công từ bên ngoài.