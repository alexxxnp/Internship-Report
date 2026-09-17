---
title : "AWS Lambda"
date : 2024-01-01
weight : 6
chapter : false
pre : " <b> 5.6. </b> "
---

#### AWS Lambda

Trong phần  này chúng ta tạo ra công cụ Lambda để quản lý & Chỉnh sửa code Back-end: Nhấn trực tiếp vào hàm event-rsvp-responses (hoặc event-rsvp-handler) để mở giao diện trình biên soạn mã nguồn (Code Editor), xem/sửa đoạn code Node.js xử lý logic RSVP. Tạo cấu hình môi trường & Phân quyền (Configuration & IAM): Thiết lập các biến môi trường (Environment Variables), thời gian chạy tối đa (Timeout), dung lượng RAM cấp phát, và gắn quyền IAM Role. Theo dõi & Kiểm thử (Test & Monitor): Tạo các kịch bản test trực tiếp trên console để kiểm tra luồng chạy của hàm, đồng thời xem liên kết theo dõi log lỗi được chuyển sang Amazon CloudWatch.
Giữ các giá trị cấu hình như tên table, tên bucket và API URL trong biến môi trường thay vì ghi trực tiếp trong code. Execution role chỉ nên có các quyền cần thiết để truy cập DynamoDB, S3 và CloudWatch. Nếu function chạy trong VPC, hãy kiểm tra subnet và security group có thể kết nối đến các dịch vụ cần thiết.
1. Tạo công cụ Lambda bằng cách truy cập vào trang Lambda sau đó nhấn Functions ở cột bên trái. Bảng Functions sẽ hiện ra, việc tiếp theo là nhấn vào nút Create function ở bên phải để tạo ra Function mới.
![Create function](/images/5-Workshop/6.jpg)
2. Đổi tên trong Function name.
![Create function](/images/5-Workshop/6.1.jpg)
3. Nhấn creata function để tạo function.
![Create function](/images/5-Workshop/6.2.jpg)
4. Trong Configuration, nhấn vào nút Edit.
![Edit](/images/5-Workshop/6.5.jpg)
5. Trong phần Edit, ta thay đổi Timeout để thay đổi thời gian. Timeout là thời hạn thời gian tối đa mà AWS cho phép một hàm Lambda chạy liên tục cho một lần kích hoạt. Sau đó nhấn nút Save màu cam để lưu lại.
![Timeout](/images/5-Workshop/6.6.jpg)
6. Cũng trong Configuration ta nhấn Environment variables, nhấn Edit sẽ hiện ra bảng Environment variables cho phép chúng ta thay đổi các cặp khóa. Sau đó chúng ta nhấn nút Save màu cam dưới cùng  bên trái để lưu lai. 
![Environment variables](/images/5-Workshop/6.7.jpg)
7. Vào IAM truy cập Roles rồi nhấn vào phần chính của trang có chữ event-rsvp rồi nhấn vào Add Permissions để gán quyền cho IAM Role của hàm Lambda trong dịch vụ AWS IAM.
![Add Permissions](/images/5-Workshop/6.8.jpg)
8. Vào lại Functions trong Lambda sau đó tìm Edit VPC. Trong trang Edit VPC ta chọn đúng VPC của trong rồi chọn hết Subnets có thể chọn trong Choose subnets. Subnet (Subnetwork - Mạng con) là một phân đoạn dải địa chỉ IP nhỏ hơn nằm bên trong mạng riêng ảo Amazon VPC. Trong Security groups, ta chọn lựa chọn nào có chữ default trong ngoặc tròn rồi nhấn vào nút Save màu cam dưới cùng bên phải để lưu lại. Khi hoàn thành nó sẽ hiện ra trong trang VPC.
![Edit VPC](/images/5-Workshop/6.9.jpg)
![VPC](/images/5-Workshop/6.10.jpg)
9. Sau khi tạo ra Lambda, chúng ta điền code vào để tạo backend cho trang web. Các chức năng của backend gồm điền tên, email cũng như phân loại người tham gia có tham dự sự kiện hay không.
![Create backend](/images/5-Workshop/6.3.jpg)
10. Phần code để thêm thông tin sự kiện cũng như là nơi để thay đổi hình ảnh trong banner của Amazon S3.
![Code events](/images/5-Workshop/6.4.jpg)
Hãy kiểm thử function với dữ liệu hợp lệ, thiếu trường, email không hợp lệ và trường hợp đăng ký trùng. Xác nhận invocation thành công và thất bại xuất hiện trong CloudWatch, đồng thời xem lại timeout và memory sau các lần kiểm thử đầu tiên.
