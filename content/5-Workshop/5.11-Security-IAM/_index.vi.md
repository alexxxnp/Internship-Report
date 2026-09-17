---
title : "Các biện pháp bảo mật đã áp dụng"
date : 2024-01-01
weight : 11
chapter : false
pre : " <b> 5.11. </b> "
---
#### Các biện pháp bảo mật đã áp dụng

Trong quá trình triển khai dự án, nhóm đã áp dụng nhiều biện pháp bảo mật để bảo vệ hệ thống, dữ liệu và tài nguyên trên AWS. Những cấu hình này không chỉ là lý thuyết mà đã được thực hiện trực tiếp trong workshop và có thể thấy rõ hiệu quả trong quá trình vận hành.

1. **IAM theo nguyên tắc least privilege**  
   Lambda, API Gateway và các tài nguyên liên quan đến EC2 chỉ được cấp quyền tối thiểu cần thiết cho chức năng của chúng. Ví dụ, Lambda xử lý RSVP chỉ cần quyền truy cập vào DynamoDB và CloudWatch Logs, không cần quyền quản trị toàn bộ AWS. Cách này giúp giảm thiểu rủi ro nếu có lỗi trong logic hoặc do tấn công từ bên ngoài.

2. **Sử dụng IAM Role thay vì Access Key cố định**  
   Các dịch vụ như Lambda và EC2 được gán IAM Role để truy cập các tài nguyên cần thiết mà không cần lưu trữ Access Key và Secret Key trực tiếp trong mã nguồn. Ví dụ, EC2 có thể truy cập S3 thông qua IAM Role mà không cần hardcode credential vào file config. Đây là một biện pháp quan trọng giúp tránh lộ thông tin xác thực trên GitHub hoặc trong source code.

3. **Cô lập mạng bằng VPC, Private Subnet và Security Group**  
   Các tài nguyên cần cô lập như RDS và backend được đặt trong Private Subnet và chỉ cho phép traffic từ các nguồn đáng tin cậy đi vào. DynamoDB là dịch vụ managed không nằm trong Subnet; trong trường hợp này, kết nối riêng được kiểm soát thông qua VPC Endpoint và IAM Policy. Cách này giúp giảm nguy cơ tấn công từ bên ngoài và tăng độ bảo mật cho hệ thống.

4. **Giới hạn truy cập từ bên ngoài bằng CORS, VPC Endpoint và Block Public Access**  
   API chỉ cho phép domain đáng tin cậy truy cập thông qua CORS, đồng thời VPC Endpoint giúp các tài nguyên trong mạng riêng kết nối với AWS mà không cần đi qua Internet công cộng. Ví dụ, S3 được bật Block Public Access để ngăn việc công khai bucket, tránh rò rỉ dữ liệu nhạy cảm. Đây là một ví dụ cụ thể về cách bảo vệ tài nguyên ở tầng lưu trữ và API.

5. **Giám sát và kiểm toán bằng CloudWatch Logs và CloudTrail**  
   Mỗi request và lỗi hệ thống đều được ghi log trong CloudWatch Logs, cho phép đội ngũ kiểm tra hoạt động của Lambda và API Gateway. Ví dụ, nếu có lỗi validation hoặc request không hợp lệ, log sẽ ghi rõ thời gian, route và lỗi tương ứng. CloudTrail giúp theo dõi lịch sử truy cập, hỗ trợ phát hiện các hoạt động bất thường và dễ dàng audit khi cần.

6. **Bật MFA cho tài khoản quản trị**  
   Tài khoản admin và các tài khoản quản trị quan trọng được bảo vệ bằng MFA. Ví dụ, nếu mật khẩu bị rò rỉ thì kẻ tấn công vẫn không thể đăng nhập nếu không có yếu tố xác thực thứ hai. Đây là lớp bảo vệ quan trọng để giảm nguy cơ mất quyền quản trị hệ thống.

#### Minh chứng triển khai và kiểm thử

Các biện pháp trên được kiểm tra thông qua những tình huống thực tế trong workshop, thay vì chỉ kiểm tra cấu hình trên giao diện AWS:

1. **Kiểm tra quyền truy cập và dữ liệu hợp lệ**  
   Gửi request hợp lệ từ Postman đến API Gateway cho kết quả `200 OK` và thông báo RSVP thành công. Dữ liệu sau đó được kiểm tra lại trong DynamoDB để xác nhận Lambda chỉ ghi nhận đúng dữ liệu cần thiết. Kết quả được minh họa trong phần [Kiểm thử và xác thực](../5.10-Test-validation/).

2. **Kiểm tra request sai và giới hạn truy cập**  
   Khi gửi payload thiếu trường bắt buộc hoặc sai định dạng, API trả về `400 Bad Request`. Khi gửi số lượng request vượt ngưỡng, API trả về `429 Too Many Requests`. Điều này chứng minh request không hợp lệ được chặn ở tầng API Gateway trước khi gây tải không cần thiết cho Lambda.

3. **Kiểm tra lỗi backend và khả năng ghi log**  
   Khi cố ý cấu hình sai tên bảng DynamoDB, hệ thống trả về `500 Internal Server Error`, Lambda ghi nhận lỗi và CloudWatch Logs hiển thị nguyên nhân `ResourceNotFoundException`. Đây là bằng chứng cho việc lỗi được phát hiện và có thể truy vết thay vì bị bỏ qua.

4. **Kiểm tra chỉ số vận hành và thông tin nhạy cảm**  
   CloudWatch Metrics ghi nhận các chỉ số `4XXError`, `5XXError`, `Errors` và `Throttles` để theo dõi hoạt động của API Gateway và Lambda. Ngoài ra, log chỉ chứa thông tin vận hành như `RequestId`, `Duration` và `Memory`, không ghi Access Key hoặc thông tin cá nhân ở dạng văn bản rõ.

5. **Kiểm tra quyền công khai của S3**  
   Bucket S3 được cấu hình Block Public Access trước khi tải mã nguồn và hình ảnh lên. Frontend vẫn được triển khai và kiểm tra thông qua URL của Amplify, trong khi bucket không được mở công khai trực tiếp. Cấu hình này giúp tách việc phân phối ứng dụng khỏi quyền truy cập trực tiếp vào bucket.

Nhìn chung, hệ thống đã được bảo vệ bằng nhiều lớp kiểm soát an ninh như least privilege, IAM Role, cô lập mạng, giới hạn truy cập, giám sát log và MFA. Những biện pháp này giúp hệ thống gần với mô hình production hơn, đồng thời giảm thiểu rủi ro về bảo mật, truy cập trái phép và mất dữ liệu.
