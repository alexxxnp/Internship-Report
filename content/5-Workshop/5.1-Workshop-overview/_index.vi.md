---
title : "Giới thiệu"
date : 2024-01-01 
weight : 1
chapter : false
pre : " <b> 5.1. </b> "
---

#### Giới thiệu

Nội dung phần này cung cấp cái nhìn tổng quan toàn diện về bài workshop, bao gồm bối cảnh bài thực hành, mô hình kiến trúc chi tiết, các dịch vụ AWS được áp dụng cùng các mục tiêu kỹ thuật cụ thể mà sẽ đạt được sau khi hoàn thành.

---

#### 1. Bối cảnh & Mục tiêu bài Workshop

Bài thực hành này giúp bạn tiếp cận và xây dựng một quy trình triển khai hoàn chỉnh cho ứng dụng trên nền tảng điện toán đám mây AWS.

Workshop kết nối các lớp giao diện, API, tính toán, cơ sở dữ liệu, lưu trữ, định danh và giám sát thành một quy trình thực hành hoàn chỉnh. Bạn sẽ theo dõi luồng request từ giao diện người dùng đến Back-end và các dịch vụ dữ liệu, sau đó kiểm tra kết quả qua log và giao diện quản lý của AWS.

* **Mục tiêu kiến thức:**
  * Hiểu rõ cơ chế hoạt động và tương tác giữa các dịch vụ đám mây trong mô hình kiến trúc ứng dụng.
  * Nắm vững các nguyên tắc cốt lõi về bảo mật, phân quyền IAM, quản lý biến môi trường và hạ tầng đám mây.
* **Mục tiêu kỹ năng:**
  * Tự tay khởi tạo, cấu hình và kết nối các dịch vụ AWS từ giao diện Console cũng như qua AWS CLI.
  * Thực hành đóng gói, kiểm thử API và triển khai dự án thực tế theo các tiêu chuẩn vận hành.
* **Kết quả mong đợi:**
  * Giải thích vai trò của từng dịch vụ AWS và lý do dịch vụ đó được sử dụng trong kiến trúc.
  * Theo dõi một request từ Front-end qua API Gateway, Lambda đến cơ sở dữ liệu hoặc S3.
  * Áp dụng các thực hành cơ bản về bảo mật, giám sát, sao lưu và kiểm soát chi phí.

---

#### 2. Các dịch vụ AWS sử dụng trong Workshop

Trong suốt bài lab, bạn sẽ làm việc trực tiếp với các dịch vụ chính sau:

| Dịch vụ AWS | Vai trò trong hệ thống |
| :--- | :--- |
| **Amazon EC2 / AWS Lambda** | Đảm nhận hạ tầng tính toán và chạy logic nghiệp vụ của ứng dụng (Server/Serverless). |
| **Amazon S3** | Lưu trữ tài nguyên tĩnh (Static Assets), lưu trữ file media hoặc các bản build ứng dụng. |
| **Amazon DynamoDB / RDS** | Cơ sở dữ liệu lưu trữ thông tin hệ thống với khả năng mở rộng cao. |
| **Amazon API Gateway** | Quản lý, điều hướng và bảo vệ các cổng kết nối API từ giao diện người dùng. |
| **AWS IAM** | Quản lý danh tính, phân quyền chi tiết cho các tài nguyên và dịch vụ tham gia hệ thống. |

---

#### 3. Mô hình Kiến trúc Hệ thống (Architecture Overview)

Sơ đồ bên dưới thể hiện luôn luồng dữ liệu và sự tương tác giữa các thành phần trong ứng dụng:
![Architecture Diagram](/images/5-Workshop/1.1.jpg)
* **Luồng xử lý dữ liệu:**
  1. Người dùng gửi yêu cầu từ giao diện web/mobile thông qua API Gateway.
  2. API Gateway chuyển tiếp request đến dịch vụ xử lý backend (EC2 hoặc Lambda).
  3. Backend truy vấn dữ liệu từ Database và thao tác lưu/trích xuất tập tin trên Amazon S3.
  4. Mọi tương tác giữa các dịch vụ đều được xác thực nghiêm ngặt bởi AWS IAM Policy.

Kiến trúc tách biệt trách nhiệm của lớp giao diện, logic nghiệp vụ và dữ liệu. Cách tách lớp này giúp dễ kiểm thử, bảo vệ tài nguyên nội bộ và cho phép từng dịch vụ mở rộng độc lập.

---

#### 4. Yêu cầu tiên quyết (Prerequisites)

Để hoàn thành bài lab một cách hiệu quả nhất, cần trang bị:
* Kiến thức cơ bản về hệ điều hành Linux, thao tác dòng lệnh (CLI) và các khái niệm mạng cơ bản (HTTP/HTTPS, RESTful API).
* Tài khoản AWS khả dụng có đủ hạn ngạch (Quota) và quyền hạn khởi tạo tài nguyên.
* Trình soạn thảo như Visual Studio Code, Git, Postman và môi trường runtime theo yêu cầu của ứng dụng mẫu.