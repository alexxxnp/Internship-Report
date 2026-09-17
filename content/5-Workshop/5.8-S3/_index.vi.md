---
title : "Amazon S3"
date : 2024-01-01
weight : 8
chapter : false
pre : " <b> 5.8. </b> "
---

#### Amazon S3

Amazon S3 (Simple Storage Service) là dịch vụ lưu trữ đám mây theo dạng đối tượng (Object Storage) với độ tin cậy và dung lượng gần như không giới hạn. Lưu trữ tệp tĩnh trang Web (Static Web Hosting), chứa toàn bộ các tệp mã nguồn Front-end đã biên dịch gồm HTML, CSS, JavaScript cùng các hình ảnh tài nguyên. Kết hợp cùng AWS Amplify để phân phối trang web Single Page Application (SPA) tới người dùng với tốc độ tải trang cao. Lưu trữ các tệp có dung lượng lớn như hình ảnh sự kiện. Giúp giảm tải cho cơ sở dữ liệu DynamoDB (vì DynamoDB chỉ nên lưu dữ liệu chuỗi/số dạng text nhẹ, không nên lưu ảnh trực tiếp). 
Hãy sử dụng tên bucket duy nhất trên toàn AWS, bật mã hóa và giữ chặn public access, trừ khi mô hình hosting cụ thể yêu cầu khác. Tách file Front-end, hình ảnh sự kiện và file tạm thành các prefix rõ ràng để dễ quản lý và xóa.
1. Tìm trang Amazon S3 sau đó nhần nút Create bucket màu vàng để tạo bucket.
![Find Amazon S3](/images/5-Workshop/8.jpg)
2. Đổi tên trong Bucket name.
![Create bucket](/images/5-Workshop/8.1.jpg)
3. Nhấn nút Create bucket dưới cùng bên phải để tạo.
![Creata Bucket](/images/5-Workshop/8.2.jpg)
4. Tải toàn bộ code Front-end trong vscode lên bằng cách nhấn nút upload và chọn files cần tải lên.
![Upload code](/images/5-Workshop/8.3.jpg)
5. Ta nhấn vào banner để upload hình ảnh sự kiện. Ảnh này sẽ được thay đổi trong code backend trong công cụ Lamda.
![Upload image events](/images/5-Workshop/8.4.jpg)
6. Sử dụng AWS Amplify để thay đổi tên link. Nhấn vào Deploy updates để thêm Front-end từ VSCode vào. Có thể lấy Front-end từ Amazon S3.
![AWS Amplify](/images/5-Workshop/8.5.jpg)
![AWS Amplify](/images/5-Workshop/8.6.jpg)
Sau khi upload, mở URL đã triển khai để kiểm tra Front-end, hình ảnh, API call và CORS trên trình duyệt. Lưu mã nguồn trong Git và sử dụng lịch sử triển khai của Amplify để tìm hoặc rollback bản cập nhật bị lỗi.
