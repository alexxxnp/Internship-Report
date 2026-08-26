---
title: "Worklog Tuần 7"
date: 2026-07-13
weight: 7
chapter: false
pre: " <b> 1.7. </b> "
---
{{% notice warning %}}
⚠️ **Lưu ý:** Các thông tin dưới đây chỉ nhằm mục đích tham khảo, vui lòng **không sao chép nguyên văn** cho bài báo cáo của bạn kể cả warning này.
{{% /notice %}}

### Mục tiêu tuần 7:
* Tìm hiểu kiến trúc Serverless căn bản: AWS Lambda và Amazon API Gateway.
* Khởi tạo các hàm Lambda xử lý logic backend không cần quản trị máy chủ.
* Tích hợp API Gateway với AWS Lambda và Amazon DynamoDB tạo thành RESTful API hoàn chỉnh.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Khái niệm Serverless Computing và ưu điểm so với mô hình Server-based truyền thống <br> - Tìm hiểu AWS Lambda: Execution Environment, Triggers, Handlers, IAM Execution Role | 13/07/2026 | 13/07/2026 | [https://docs.aws.amazon.com/lambda/latest/dg/welcome.html](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) |
| 3 | - Tìm hiểu Amazon API Gateway: REST API, HTTP API, Integration Types, Stages <br> - Cấu hình CORS và Authentication trên API Gateway | 14/07/2026 | 14/07/2026 | [https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html](https://docs.aws.amazon.com/apigateway/latest/developerguide/welcome.html) |
| 4 | - **Thực hành Lambda:** <br>&emsp; + Viết AWS Lambda Function bằng Node.js/Python <br>&emsp; + Cấu hình IAM Execution Role cấp quyền truy cập DynamoDB <br>&emsp; + Test hàm Lambda trực tiếp trên AWS Console | 15/07/2026 | 15/07/2026 | [https://docs.aws.amazon.com/lambda/latest/dg/getting-started.html](https://docs.aws.amazon.com/lambda/latest/dg/getting-started.html) |
| 5 | - **Thực hành API Gateway:** <br>&emsp; + Khởi tạo REST API trên API Gateway <br>&emsp; + Tạo các HTTP Methods (GET, POST, PUT, DELETE) <br>&emsp; + Tích hợp API Gateway Endpoint với Lambda Function | 16/07/2026 | 16/07/2026 | [https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-getting-started-with-rest-apis.html](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-getting-started-with-rest-apis.html) |
| 6 | - Kiểm thử gọi REST API bằng Postman / Curl <br> - Hoàn thiện chuỗi bài toán Serverless CRUD (API Gateway -> Lambda -> DynamoDB) | 17/07/2026 | 17/07/2026 | [https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-dynamodb.html](https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-dynamodb.html) |

### Kết quả đạt được tuần 7:
* Nắm chắc tư duy thiết kế hệ thống theo mô hình không máy chủ (Serverless).
* Khởi tạo và chạy thành công các bài toán xử lý dữ liệu với AWS Lambda.
* Xây dựng thành công chuỗi RESTful API chuẩn bằng sự kết hợp giữa API Gateway, AWS Lambda và DynamoDB, kiểm thử mượt mà qua Postman.