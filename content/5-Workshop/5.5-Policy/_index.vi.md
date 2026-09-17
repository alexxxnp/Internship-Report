---
title : "Amazon DynamoDB"
date : 2024-01-01
weight : 5
chapter : false
pre : " <b> 5.5 </b> "
---

#### Tổng quan
Trong phần này chúng ta tạo ra công cụ DynamoDB. Quản lý & Truy xuất dữ liệu RSVP (Explore table items): Nhấn nút màu cam Explore table items ở góc trên để xem, tìm kiếm, chỉnh sửa hoặc xóa danh sách các bản ghi khách hàng đã đăng ký RSVP.
Cấu hình chỉ mục & Hiệu năng (Indexes / Monitor): Tạo các chỉ mục phụ (GSI/LSI) giúp tăng tốc độ truy vấn dữ liệu và xem biểu đồ CloudWatch về lưu lượng Đọc/Ghi (Read/Write capacity) của ứng dụng theo thời gian thực.
Bảo vệ & Khôi phục dữ liệu (Backups / PITR): Thiết lập tính năng tự động sao lưu theo thời gian thực (Point-in-time recovery - PITR) hoặc tạo bản Backup thủ công để tránh mất mát dữ liệu đăng ký sự kiện của người dùng.

Hãy chọn partition key đơn giản, phù hợp với cách ứng dụng truy xuất bản ghi RSVP. Trước khi chỉnh sửa hoặc xóa item, cần xác nhận đúng Region và đúng table. Với môi trường thực tế, hãy kiểm tra capacity mode, mã hóa, access policy, thời gian lưu backup và quyền IAM tối thiểu.
1. Ta tìm trang công cụ DynamoDB giống như trong hình.
![DynamoDB](/images/5-Workshop/5.jpg)
2. Ta tạo công cụ bằng cách nhần vào chữ Table ở cột bên trái sau đó nhấn nút Create table ở bên phải để tạo công cụ DynamoDB.
![Create table](/images/5-Workshop/5.1.jpg)
3. Sau khi vào trang tạo, chúng ta đăt tên cho công cụ trong Table  name, tạo Partition key.
![Create name and Partition key](/images/5-Workshop/5.2.jpg)
4. Cuối cùng ta tạo công cụ bằng cách nhấn nút create table.
![Create table](/images/5-Workshop/5.3.jpg)

Sau khi tạo table, sử dụng **Explore table items** để xác nhận table đã sẵn sàng. Chỉ thêm test item khi cần, kiểm tra giá trị partition key và xóa dữ liệu kiểm thử sau khi xác nhận. Theo dõi hoạt động đọc/ghi trong CloudWatch và bật PITR trước khi lưu dữ liệu đăng ký quan trọng.
