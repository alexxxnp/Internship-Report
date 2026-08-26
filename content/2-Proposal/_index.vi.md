---
title: "Bản đề xuất"
date: 2024-01-01
weight: 2
chapter: false
pre: " <b> 2. </b> "
---
{{% notice warning %}}
⚠️ **Lưu ý:** Các thông tin dưới đây chỉ nhằm mục đích tham khảo, vui lòng **không sao chép nguyên văn** cho bài báo cáo của bạn kể cả warning này.
{{% /notice %}}

Tại phần này, bạn cần tóm tắt các nội dung trong workshop mà bạn **dự tính** sẽ làm.

# AWS Event Management & RSVP Platform
## Nền tảng Quản lý và Đăng ký Sự kiện Cộng đồng trên nền AWS Serverless  

### 1. Tóm tắt điều hành  
Dự án AWS User Group PH Events là một trang web hỗ trợ quản lý và đăng ký tham gia các sự kiện công nghệ của cộng đồng AWS tại Philippines. Nền tảng này giúp đơn giản hóa toàn bộ quy trình từ lúc tìm hiểu sự kiện cho đến khi có mặt tại buổi hội thảo: người dùng có thể dễ dàng xem thông tin các buổi meetup, bấm đăng ký (RSVP) để nhận ngay vé điện tử chứa mã QR code check-in cá nhân, và tra cứu sơ đồ đường đi (Venue Navigator) trực quan ngay trên giao diện. Được thiết kế theo mô hình trang đơn (SPA) hiện đại kết hợp với công nghệ điện toán đám mây Serverless (AWS Lambda, DynamoDB, Amplify), hệ thống vận hành cực kỳ mượt mà, tải nhanh và dễ dàng mở rộng khi có lượng lớn sinh viên hay lập trình viên cùng truy cập. 

### 2. Tuyên bố vấn đề  
Vấn đề hiện tại:
Trong công tác tổ chức các sự kiện công nghệ như AWS User Group PH, việc quản lý bằng biểu mẫu thủ công (Google Forms) gây trùng lặp dữ liệu, quá tải vé và không kiểm soát được lượng đăng ký theo thời gian thực. Thiếu hệ thống vé điện tử cá nhân hóa khiến khâu check-in tại sảnh đón tiếp bị ùn tắc do đối soát danh sách thủ công. Đồng thời, sơ đồ mặt bằng phức tạp tại các văn phòng lớn như AWS Level 26 khiến người tham dự loay hoay tìm kiếm khu vực Sân khấu, Networking hay Teabreak, trong khi việc duy trì máy chủ truyền thống 24/7 gây lãng phí chi phí hạ tầng nghiêm trọng.

Giải pháp:
Dự án đề xuất xây dựng Nền tảng Web SPA hiện đại kết hợp kiến trúc Serverless trên đám mây AWS. Hệ thống sử dụng AWS Lambda để tự động hóa xử lý nghiệp vụ RSVP, lưu trữ dữ liệu tức thì vào Amazon DynamoDB và khởi tạo mã QR Code định danh duy nhất cho từng vé điện tử. Giao diện được mô-đun hóa với các tính năng cốt lõi như Events Hub, My Passes, Resources và đặc biệt là công cụ Venue Navigator hiển thị sơ đồ tầng tương tác 2 cột kèm Pop-up chỉ đường trực quan. Toàn bộ mã nguồn được quản lý trên GitHub và tự động triển khai CI/CD qua AWS Amplify.

Lợi ích và hoàn vốn đầu tư (ROI):
Giải pháp Serverless giúp cắt giảm 80–90% chi phí vận hành hạ tầng nhờ cơ chế chỉ tính phí khi có truy cập thực tế, đồng thời tự động mở rộng quy mô xử lý hàng nghìn lượt đăng ký cùng lúc mà không lo sập web. Quy trình quét mã QR Code rút ngắn 70% thời gian check-in, giúp giải quyết triệt để tình trạng xếp hàng ùn tắc tại sự kiện. Bên cạnh việc nâng cao trải nghiệm người dùng thông qua bản đồ điều hướng thông minh, hệ thống mang lại giá trị tái sử dụng lâu dài khi có thể dễ dàng tùy biến cho mọi kỳ sự kiện tiếp theo mà không tốn chi phí phát triển lại từ đầu.

### 3. Kiến trúc giải pháp  
Hệ thống AWS User Group Events Management được triển khai trên nền tảng điện toán đám mây AWS theo kiến trúc ứng dụng web đa tầng Serverless kết hợp Microservices. Giao diện người dùng và các tệp tĩnh (HTML/CSS/JS/Images) được lưu trữ tại Amazon S3 và phân phối qua mạng lưới Amazon CloudFront CDN nhằm tối ưu hóa tốc độ tải trang toàn cầu. Các truy vấn API từ trình duyệt client được tiếp nhận và điều hướng bảo mật qua Amazon API Gateway, gửi yêu cầu về các AWS Lambda functions (hoặc backend ứng dụng chạy trên Amazon EC2) để xử lý logic đăng ký RSVP, thống kê số liệu và tương tác dữ liệu. Dữ liệu sự kiện và danh sách người dùng được lưu trữ an toàn trong cơ sở dữ liệu Amazon RDS (MySQL) đặt tại Private Subnet của Amazon VPC, đồng thời toàn bộ hạ tầng được kiểm soát phân quyền chặt chẽ bởi AWS IAM và giám sát hệ thống realtime qua Amazon CloudWatch.

![IoT Weather Station Architecture](/images/2-Proposal/edge_architecture.jpeg)

![IoT Weather Platform Architecture](/images/2-Proposal/platform_architecture.jpeg)

*Dịch vụ AWS sử dụng*  
-Dự án áp dụng mô hình Serverless kết hợp các dịch vụ đám mây cốt lõi của AWS để đảm bảo tính sẵn sàng cao, bảo mật và tối ưu chi phí:
-AWS Amplify & Amazon S3: Hosting giao diện Front-end (Single Page Application - SPA), hỗ trợ tự động hóa CI/CD từ GitHub và lưu trữ các tệp tĩnh (Static Assets, hình ảnh banner, logo).
-Amazon API Gateway: Đóng vai trò làm Cổng tiếp nhận API (API Gateway REST/HTTP), nhận request từ client và điều hướng bảo mật đến backend.
-AWS Lambda: Xử lý toàn bộ logic nghiệp vụ Backend Serverless (đăng ký RSVP, phát hành vé QR, kiểm tra trùng lặp) mà không cần quản lý máy chủ.
-Amazon DynamoDB: Cơ sở dữ liệu NoSQL lưu trữ thông tin sự kiện, danh sách đăng ký và mã vé QR Code với độ trễ cực thấp.
-Amazon CloudFront: Mạng phân phối nội dung (CDN) giúp tăng tốc độ tải trang web cho người dùng ở nhiều khu vực khác nhau.
-Amazon CloudWatch: Ghi log (Logging) và giám sát hiệu năng (Monitoring) hệ thống, phát hiện sự cố tự động trong quá trình vận hành.
-AWS Billing and Cost Management: Quản lý và theo dõi ngân sách, đảm bảo hệ thống vận hành tối ưu chi phí theo mô hình "dùng bao nhiêu trả bấy nhiêu".

*Thiết kế thành phần*  
![Component Design](/images/2-Proposal/component_design.jpg)
-Lớp Giao diện (Presentation Layer):
Mã nguồn Frontend (HTML, Tailwind CSS, JavaScript) được quản lý trên GitHub, kết nối CI/CD qua AWS Amplify.
CloudFront đóng vai trò CDN caching giúp tối ưu tốc độ phản hồi cho giao diện người dùng.
-Lớp Nghiệp vụ (Business Logic Layer):
API Gateway tiếp nhận các yêu cầu HTTPS từ trình duyệt (ví dụ: POST /rsvp, GET /events).
AWS Lambda kích hoạt để thực thi code Node.js xử lý logic: xác thực email, sinh chuỗi QR Code định danh và ghi dữ liệu.
-Lớp Dữ liệu (Data Layer):
Amazon DynamoDB lưu trữ dữ liệu dạng Key-Value (Bảng Events, Bảng Passes/Attendees) đảm bảo truy vấn nhanh và tự động mở rộng (Auto-scaling).
-Lớp Quản lý & Giám sát (Management & Monitoring Layer):
CloudWatch thu thập logs từ Lambda và API Gateway để theo dõi số lượng lượt đăng ký và kiểm tra lỗi hệ thống theo thời gian thực.
AWS Billing kiểm soát chi phí thực tế phát sinh trong quá trình diễn ra sự kiện. 

### 4. Triển khai kỹ thuật  
*Các giai đoạn triển khai*  
Dự án gồm 2 phần — thiết lập trạm thời tiết biên và xây dựng nền tảng thời tiết — mỗi phần trải qua 4 giai đoạn:  
1. *Nghiên cứu và vẽ kiến trúc*: Nghiên cứu Raspberry Pi với cảm biến ESP32 và thiết kế kiến trúc AWS Serverless (1 tháng trước kỳ thực tập).  
2. *Tính toán chi phí và kiểm tra tính khả thi*: Sử dụng AWS Pricing Calculator để ước tính và điều chỉnh (Tháng 1).  
3. *Điều chỉnh kiến trúc để tối ưu chi phí/giải pháp*: Tinh chỉnh (ví dụ tối ưu Lambda với Next.js) để đảm bảo hiệu quả (Tháng 2).  
4. *Phát triển, kiểm thử, triển khai*: Lập trình Raspberry Pi, AWS services với CDK/SDK và ứng dụng Next.js, sau đó kiểm thử và đưa vào vận hành (Tháng 2–3).  

*Yêu cầu kỹ thuật*  
- *Trạm thời tiết biên*: Cảm biến (nhiệt độ, độ ẩm, lượng mưa, tốc độ gió), vi điều khiển ESP32, Raspberry Pi làm thiết bị biên. Raspberry Pi chạy Raspbian, sử dụng Docker để lọc dữ liệu và gửi 1 MB/ngày/trạm qua MQTT qua Wi-Fi.  
- *Nền tảng thời tiết*: Kiến thức thực tế về AWS Amplify (lưu trữ Next.js), Lambda (giảm thiểu do Next.js xử lý), AWS Glue (ETL), S3 (2 bucket), IoT Core (gateway và rules), và Cognito (5 người dùng). Sử dụng AWS CDK/SDK để lập trình (ví dụ IoT Core rules tới S3). Next.js giúp giảm tải Lambda cho ứng dụng web fullstack.  

### 5. Lộ trình & Mốc triển khai  
- *Trước thực tập (Tháng 0)*: 1 tháng lên kế hoạch và đánh giá trạm cũ.  
- *Thực tập (Tháng 1–3)*:  
    - Tháng 1: Học AWS và nâng cấp phần cứng.  
    - Tháng 2: Thiết kế và điều chỉnh kiến trúc.  
    - Tháng 3: Triển khai, kiểm thử, đưa vào sử dụng.  
- *Sau triển khai*: Nghiên cứu thêm trong vòng 1 năm.  

### 6. Ước tính ngân sách  
Có thể xem chi phí trên [AWS Pricing Calculator](https://calculator.aws/#/estimate?id=621f38b12a1ef026842ba2ddfe46ff936ed4ab01)  
Hoặc tải [tệp ước tính ngân sách](../attachments/budget_estimation.pdf).  

*Chi phí hạ tầng*  
- AWS Lambda: 0,00 USD/tháng (1.000 request, 512 MB lưu trữ).  
- S3 Standard: 0,15 USD/tháng (6 GB, 2.100 request, 1 GB quét).  
- Truyền dữ liệu: 0,02 USD/tháng (1 GB vào, 1 GB ra).  
- AWS Amplify: 0,35 USD/tháng (256 MB, request 500 ms).  
- Amazon API Gateway: 0,01 USD/tháng (2.000 request).  
- AWS Glue ETL Jobs: 0,02 USD/tháng (2 DPU).  
- AWS Glue Crawlers: 0,07 USD/tháng (1 crawler).  
- MQTT (IoT Core): 0,08 USD/tháng (5 thiết bị, 45.000 tin nhắn).  

*Tổng*: 0,7 USD/tháng, 8,40 USD/12 tháng  
- *Phần cứng*: 265 USD một lần (Raspberry Pi 5 và cảm biến).  

### 7. Đánh giá rủi ro  
*Ma trận rủi ro*  
- Mất mạng: Ảnh hưởng trung bình, xác suất trung bình.  
- Hỏng cảm biến: Ảnh hưởng cao, xác suất thấp.  
- Vượt ngân sách: Ảnh hưởng trung bình, xác suất thấp.  

*Chiến lược giảm thiểu*  
- Mạng: Lưu trữ cục bộ trên Raspberry Pi với Docker.  
- Cảm biến: Kiểm tra định kỳ, dự phòng linh kiện.  
- Chi phí: Cảnh báo ngân sách AWS, tối ưu dịch vụ.  

*Kế hoạch dự phòng*  
- Quay lại thu thập thủ công nếu AWS gặp sự cố.  
- Sử dụng CloudFormation để khôi phục cấu hình liên quan đến chi phí.  

### 8. Kết quả kỳ vọng  
*Cải tiến kỹ thuật*: Dữ liệu và phân tích thời gian thực thay thế quy trình thủ công. Có thể mở rộng tới 10–15 trạm.  
*Giá trị dài hạn*: Nền tảng dữ liệu 1 năm cho nghiên cứu AI, có thể tái sử dụng cho các dự án tương lai.