---
title : "Amazon RDS"
date : 2024-01-01 
weight : 4 
chapter : false
pre : " <b> 5.4. </b> "
---

#### Tổng quan

+ Trong phần này, bạn sẽ tạo ra một ô database bằng công cụ Aurora and RDS.
Amazon RDS cung cấp cơ sở dữ liệu quan hệ được quản lý, trong đó cấu hình mạng quyết định database có thể truy cập công khai hay được cô lập trong VPC. Với workshop này, hãy kiểm tra kỹ cấu hình kết nối và bảo mật trước khi tạo instance.
![Aurora and RDS](/images/5-Workshop/4.jpg)
1. Đầu tiên thì chúng ta nhấn vào Create database để tạo ra một database mới.
![Create database](/images/5-Workshop/4.1.jpg)
2. Chọn Full configuration 
![Create database](/images/5-Workshop/4.2.jpg)
3. Chọn tạo MySQL
![Create database](/images/5-Workshop/4.3.jpg)
4. Trong Choose a database creation method ta chọn Easy create cho người làm dự án cá nhân. Cũng như vậy trong Configuration ta chọn Easy tier. Ta đặt tên cho database trong phần DB intance identifier.
![Create database](/images/5-Workshop/4.4.jpg)
5. Trong Master username ta giữ nguyên là admin.Trong Credentials management  ta giữ nguyên là Self managed nếu muốn thêm mật khẩu.
![Create database](/images/5-Workshop/4.5.jpg)
6. Cuối cùng ta nhấn Create database để tạo databate.
![Create database](/images/5-Workshop/4.6.jpg)

Sau khi tạo, hãy chờ trạng thái database chuyển sang **Available**. Chỉ ghi lại endpoint để kiểm thử nội bộ được cho phép, kiểm tra security group cho phép lưu lượng từ đúng nguồn ứng dụng và không bật public access nếu bài lab không yêu cầu.

