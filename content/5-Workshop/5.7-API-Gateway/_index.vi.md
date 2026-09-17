---
title : "Amazon API Gateway"
date : 2024-01-01
weight : 7
chapter : false
pre : " <b> 5.7. </b> "
---

#### Amazon API Gateway

- Amazon API Gateway đóng vai trò là cánh cửa đầu nối (Cổng giao tiếp) trung gian giữa giao diện người dùng (Front-end Web/App) và dịch vụ xử lý Back-end (AWS Lambda) trong kiến trúc Serverless.
- Hình dung API Gateway giống như một "lễ tân": tiếp nhận yêu cầu từ người dùng gửi đến, kiểm tra tính hợp lệ, sau đó chuyển yêu cầu tới "phòng xử lý" (AWS Lambda) và trả kết quả về lại cho người dùng.
Nên định nghĩa route và method rõ ràng, chỉ cho phép CORS từ các origin Front-end đáng tin cậy và không công khai các endpoint quản trị. Sử dụng status code và response body thống nhất để Front-end xử lý kết quả thành công hoặc lỗi một cách ổn định.
1. Trong API Gateway ta nhấn vào APIs bên cột bên trái Rồi nhấn vào nút Create Api màu vàng trên cùng bên phải để tạo thêm API mới. Tìm HTTP API rồi nhấn Build. Đặt tên cho API trong api name rồi chọn Lambda trong Integrations. Trong Lambda function chỉ cần chọn cái đã cho sẵn. Nhấn nút next để sang bước tiếp theo.
![Configure API](/images/5-Workshop/7.jpg)
2. Trong Configure routes ta thêm từng tuyến đường vào, bên cột Integration target ta chọn tất cả theo lựa chọn có sẵn. Sau đó nhấn next để sang bước tipees theo.
![Configure routes](/images/5-Workshop/7.1.jpg)
3. Nhấp vào API đã tạo rồi tìm CORS ở cột bên trái để thêm tiêu đề cho phép truy cập.
![COR](/images/5-Workshop/7.2.jpg)
4. Sử dụng Postman để kiểm tra lỗi sai.
![Postman](/images/5-Workshop/7.3.jpg)
5. Nếu có lỗi sai thì nó sẽ được gửi trong CloudWatch
![CloudWatch](/images/5-Workshop/7.4.jpg)
6. VPC Endpoint đóng vai trò là một "đường đi tắt nội bộ" hoàn toàn riêng tư, giúp các tài nguyên nằm trong mạng riêng (Private Subnet) kết nối trực tiếp đến các dịch vụ AWS khác mà không cần đi ra ngoài Internet public. Vào VPC, tìm Endpoints ở cột bên phải rồi nhấn vào Create endpoint để tạo ra endpoint mới. Trong Services tìm bằng từ khóa Dynamo. Trong VPC chọn cái có từ khóa default. Đừng quên nhấn tích trong Policy rồi nhấn nút create endpoint để hoàn thành.
![Create endpoint](/images/5-Workshop/7.5.jpg)
![Create endpoint](/images/5-Workshop/7.6.jpg)
![Create endpoint](/images/5-Workshop/7.7.jpg)
Sau khi triển khai, sao chép API invoke URL và dùng Postman kiểm thử từng route. Kiểm tra response thành công, lỗi validate, request không được cấp quyền, CORS, lỗi Lambda và log CloudWatch trước khi kết nối API với Front-end.
