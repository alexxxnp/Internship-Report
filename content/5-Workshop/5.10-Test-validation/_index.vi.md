---
title : "Kiểm thử và xác thực"
date : 2024-01-01
weight : 10
chapter : false
pre : " <b> 5.10. </b> "
---
#### Kiểm thử và xác thực

1. Gửi Request (Trigger Test)
Sử dụng Postman hoặc cURL gửi các HTTP Request (GET, POST) đến API Gateway Endpoint.

Test luồng đăng ký/RSVP thành công, gửi payload hợp lệ và giả lập các request trùng lặp hoặc sai định dạng.
Khi đăng ký thành công sẽ hiện "message": "RSVP recorded successfully!", còn khi dăng ký thất bại sẽ hiện "You have already RSVP'd for this event with this email!". Ngoài ra chúng ta còn có thể nhập rằng người đó có tham dự hay không.
![Test [Postman]](/images/5-Workshop/10.1.jpg)
![Test [Postman]](/images/5-Workshop/10.2.jpg)
Trong đây còn hiện số người đăng ký tham gia hoặc không tham gia vào sự kiện.
![Test [Postman]](/images/5-Workshop/10.3.jpg)
Thông tin người đăng ký tham gia cũng hiện trong này.
![Test [Postman]](/images/5-Workshop/10.4.jpg)
Còn lại là danh sách sự kiện và thêm sự kiện.
![Test [Postman]](/images/5-Workshop/10.5.jpg)
![Test [Postman]](/images/5-Workshop/10.6.jpg)
2. Xem Log (CloudWatch Logs)
Truy cập Amazon CloudWatch Logs để kiểm tra log chi tiết từ các hàm AWS Lambda execution.
Khi có lỗi thì nó sẽ được báo trong Amazon CloudWatch.
![Amazon CloudWatch](/images/5-Workshop/10.7.jpg)
3. Check Metric (Monitoring)
Quan sát bảng điều khiển (Dashboard) trên Amazon CloudWatch Metrics.
API Gateway: Kết quả kiểm thử trên Amazon CloudWatch Metrics xác nhận hệ thống API Gateway và Lambda vận hành ĐẠT (PASSED) tiêu chuẩn kỹ thuật: các chỉ số lỗi 4xx và 5xx hoàn toàn bằng 0, lưu lượng request (Count) được tiếp nhận và xử lý chính xác, đồng thời độ trễ (IntegrationLatency) phản hồi ổn định sau lượt khởi động ban đầu (Cold Start), đảm bảo tính sẵn sàng và độ tin cậy cao cho toàn bộ kiến trúc Serverless.
![API Gateway](/images/5-Workshop/10.8.jpg)
AWS Lambda: Kết quả kiểm thử trực quan trên Amazon CloudWatch Metrics cho hàm AWS Lambda event-rsvp-handler đạt trạng thái PASSED (ĐẠT): chỉ số thời gian xử lý (Duration) ghi nhận mức tiêu thụ ban đầu khoảng 1.1k ms (do hiện tượng Cold Start) và nhanh chóng hạ thấp tối ưu ở các lần gọi tiếp theo, trong khi các chỉ số rủi ro vận hành bao gồm lỗi hệ thống (Errors) và bị thắt nút cổ chai (Throttles) đều duy trì tuyệt đối ở mức 0, khẳng định backend xử lý dữ liệu ổn định và đáp ứng tốt tiêu chuẩn hiệu năng.
![AWS Lambda](/images/5-Workshop/10.9.jpg)
Dynamo DBKết quả đo lường trên CloudWatch Metrics cho bảng DynamoDB event-rsvp-responses đạt trạng thái PASSED (ĐẠT): hệ thống tiêu thụ tài nguyên đọc/ghi (ConsumedReadCapacityUnits & ConsumedWriteCapacityUnits) tối ưu và đúng như kỳ vọng theo từng đợt truy vấn dữ liệu thực tế, đồng thời chỉ số kiểm tra điều kiện lỗi (ConditionalCheckFailedRequests) hoàn toàn bằng 0, xác nhận cơ sở dữ liệu xử lý ghi nhận RSVP chính xác và không gặp bất kỳ xung đột dữ liệu nào.
![Dynamo DB](/images/5-Workshop/10.10.jpg)
4. Kiểm thử lỗi (Chaos & Failure Testing)
### Bảng kết quả Kiểm thử lỗi (Chaos & Failure Testing)

| STT | Kịch bản kiểm thử (Test Scenario) | Thao tác thực thi (Action) | HTTP Status mong đợi | Kết quả CloudWatch Metrics & Logs | Trạng thái |
| :--- | :--- | :--- | :---: | :--- | :---: |
| **1** | **Validate Payload & CORS** | Gửi request POST /rsvp thiếu trường bắt buộc (email) hoặc gửi sai định dạng JSON. | 400 Bad Request | Metric ApiGateway 4XXError xuất hiện điểm tăng vọt (spike). Không phát sinh log lỗi ở tầng Lambda. | **PASSED** |
| **2** | **Cơ chế Throttling (Rate Limit)** | Bắn dồn dập 100+ requests/giây bằng Postman Runner vượt ngưỡng cho phép của API Gateway Stage. | 429 Too Many Requests | Metric ApiGateway 4XXError tăng vọt; chỉ số Throttles của Lambda ghi nhận $0$ nhờ API Gateway chặn từ tầng trên. | **PASSED** |
| **3** | **Giả lập sự cố Database (Retry/Exception)** | Đổi sai tên bảng DynamoDB trong biến môi trường Lambda nhằm giả lập mất kết nối DB. | 500 Internal Server Error | Metric ApiGateway 5XXError và Lambda Errors xuất hiện spike. Log Group ghi nhận chính xác chi tiết ngoại lệ ResourceNotFoundException. | **PASSED** |

5. Kết quả mong đợi (Expected Results)
Trên Postman sau khi kích hoạt hiện "200 ok" cho thấy hoạt động tốt.
![Postman](/images/5-Workshop/10.11.jpg)
Tiến hành kiểm tra dữ liệu sau khi gửi thành công 1 request từ Postman. Kết quả cho thấy thành công.
![Dynamo DB](/images/5-Workshop/10.12.jpg)
Đánh giá An toàn Log (Security & Privacy Verification): Kết quả kiểm tra Log Stream trên CloudWatch Logs xác nhận hệ thống đạt chuẩn an toàn bảo mật (PASSED): toàn bộ nội dung log chỉ ghi nhận các thông số hệ thống tiêu chuẩn (RequestId, Duration, Memory) và các đường dẫn API public (routeKey), hoàn toàn không làm rò rỉ các thông tin nhạy cảm của hạ tầng (như AWS Access Keys hay Role ARN) cũng như không in trần (plain-text) thông tin cá nhân của người dùng, đảm bảo tuân thủ nghiêm ngặt nguyên tắc bảo mật thông tin và quản trị rủi ro.
![Amazon CloudWatch](/images/5-Workshop/10.13.jpg)