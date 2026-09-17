---
title: "Bản đề xuất"
date: 2024-01-01
weight: 2
chapter: false
pre: " <b> 2. </b> "
---


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
Giải pháp Serverless được kỳ vọng giúp cắt giảm khoảng 80–90% chi phí vận hành hạ tầng so với máy chủ truyền thống luôn chạy, nhờ cơ chế chỉ tính phí theo mức sử dụng thực tế. Hệ thống cũng được thiết kế để tự động mở rộng khi có hàng nghìn lượt đăng ký cùng lúc. Quy trình quét mã QR Code đặt mục tiêu rút ngắn khoảng 70% thời gian check-in, góp phần giải quyết tình trạng xếp hàng tại sự kiện. Các tỷ lệ này là mục tiêu của dự án và cần được kiểm chứng bằng số liệu sau khi triển khai. Nền tảng có thể tái sử dụng và tùy biến cho các sự kiện tiếp theo mà không cần xây dựng lại từ đầu.

### 3. Kiến trúc giải pháp  
Kiến trúc giải pháp của hệ thống AWS User Group Events Management được thiết kế theo mô hình ứng dụng web đa tầng sử dụng các dịch vụ Serverless, giúp tối ưu chi phí và tự động co giãn theo lượng truy cập. Ở tầng giao diện, mã nguồn được phát triển trên Visual Studio Code (VS Code), trong khi AWS Amplify kết hợp Amazon S3 lưu trữ giao diện Single Page Application (SPA), các tệp tĩnh và hỗ trợ quản lý quy trình triển khai ứng dụng. Khi người dùng tương tác, mọi truy vấn REST API được tiếp nhận an toàn qua Amazon API Gateway rồi chuyển tiếp tới các hàm AWS Lambda để xử lý logic nghiệp vụ RSVP. Công cụ Postman được sử dụng để kiểm thử API, kiểm tra và khắc phục lỗi hệ thống. Ở tầng dữ liệu, Amazon DynamoDB lưu trữ NoSQL cho thông tin thời gian thực, còn Amazon RDS/Aurora quản lý dữ liệu quan hệ của sự kiện và người dùng. RDS/Aurora được đặt trong Private Subnet của Amazon VPC; DynamoDB là dịch vụ managed và được truy cập qua endpoint của dịch vụ hoặc VPC endpoint, không đặt trực tiếp trong subnet. Cuối cùng, Amazon CloudWatch giám sát hiệu năng và log, còn AWS Billing and Cost Management thiết lập cảnh báo ngân sách để kiểm soát chi phí hạ tầng.

![AWS Cloud](/images/5-Workshop/2.4.jpg)

*Dịch vụ AWS sử dụng*  
Dự án áp dụng mô hình Serverless kết hợp các dịch vụ đám mây cốt lõi của AWS nhằm đảm bảo tính sẵn sàng cao, bảo mật và tối ưu chi phí vận hành. Trong đó, mã nguồn Front-end được lập trình trên Visual Studio Code (VS Code), sau đó AWS Amplify kết hợp cùng Amazon S3 đảm nhận vai trò hosting giao diện Front-end (Single Page Application - SPA), lưu trữ các tệp tĩnh như hình ảnh banner, logo và tự động hóa quy trình quản lý triển khai ứng dụng. Khi người dùng thực hiện thao tác, mọi request từ client đều gửi qua Amazon API Gateway để được kiểm tra và điều hướng bảo mật đến Back-end. Tại đây, toàn bộ logic nghiệp vụ phía Back-end như xử lý thêm tên, địa chỉ email và thông tin sự kiện được đảm nhiệm hoàn toàn bởi các hàm AWS Lambda, với công cụ Postman được sử dụng xuyên suốt để kiểm thử lỗi API, xác thực cấu hình CORS và các trạng thái phản hồi. Toàn bộ thông tin sự kiện, danh sách đăng ký được lưu trữ với độ trễ cực thấp trên cơ sở dữ liệu NoSQL Amazon DynamoDB. Cuối cùng, toàn bộ hạ tầng được duy trì ổn định nhờ Amazon CloudWatch đảm nhận việc ghi log (Logging), giám sát hiệu năng (Monitoring) và tự động phát hiện sự cố, đồng thời dịch vụ AWS Billing and Cost Management hỗ trợ quản lý ngân sách và gửi cảnh báo chi phí (Budget Alarms) giúp hệ thống vận hành tối ưu theo đúng mô hình “dùng bao nhiêu trả bấy nhiêu”.

*Thiết kế thành phần*  
- Lớp Giao diện (Presentation Layer): Mã nguồn Front-end (HTML, Tailwind CSS, JavaScript) được lập trình và phát triển trên Visual Studio Code (VS Code), quản lý tập trung trên GitHub và tự động kết nối CI/CD qua AWS Amplify. 
- Lớp Nghiệp vụ (Business Logic Layer): API Gateway tiếp nhận các yêu cầu HTTPS từ trình duyệt (ví dụ: POST /rsvp, GET /events). Các hàm AWS Lambda thực thi code Node.js và xác thực email; Postman được sử dụng để kiểm thử toàn bộ endpoint, phát hiện lỗi dữ liệu và lỗi hệ thống.
- Lớp Dữ liệu (Data Layer): Amazon DynamoDB lưu trữ dữ liệu dạng Key-Value (Bảng Events, Bảng Passes/Attendees) đảm bảo truy vấn nhanh và tự động mở rộng (Auto-scaling).
- Lớp Quản lý & Giám sát (Management & Monitoring Layer): CloudWatch thu thập logs từ Lambda và API Gateway để theo dõi số lượng lượt đăng ký và kiểm tra lỗi hệ thống theo thời gian thực. AWS Billing kiểm soát chi phí thực tế phát sinh trong quá trình diễn ra sự kiện.
### 4. Triển khai kỹ thuật  
*Các giai đoạn triển khai*  
Quá trình triển khai dự án được chia thành 4 giai đoạn nối tiếp chặt chẽ nhằm đảm bảo hệ thống vận hành ổn định và đúng tiến độ. Giai đoạn đầu tập trung khởi tạo môi trường mạng và lưu trữ, bao gồm cấu hình Amazon VPC với Private Subnet, thiết lập bảng dữ liệu Amazon DynamoDB và các cơ sở dữ liệu trên RDS/Aurora. Tiếp theo, ở tầng Back-end, nhóm phát triển lập trình các hàm AWS Lambda để xử lý toàn bộ logic nghiệp vụ RSVP, kết nối qua cổng Amazon API Gateway và sử dụng Postman để kiểm thử API, phát hiện và xử lý lỗi kịp thời. Giai đoạn thứ ba sử dụng công cụ Visual Studio Code (VS Code) để lập trình giao diện Front-end Single Page Application (SPA) và quản lý quy trình triển khai, hosting trực tiếp trên AWS Amplify. Cuối cùng, khởi tạo Amazon CloudWatch và AWS Budgets nhằm kiểm thử tải, giám sát log lỗi và kiểm soát chi phí tự động trước khi chính thức đưa vào vận hành.
*Yêu cầu kỹ thuật*  
Hệ thống phải tuân thủ các tiêu chuẩn về hiệu năng, bảo mật và khả năng quản trị. Về kiến trúc, dự án áp dụng mô hình Serverless 3-Tier: Amplify/S3 cho Presentation, API Gateway/Lambda cho Business Logic và DynamoDB/RDS cho Data. RDS cùng các tài nguyên hỗ trợ được cô lập trong Private Subnet của Amazon VPC; DynamoDB được bảo vệ bằng IAM policy và có thể truy cập riêng tư qua VPC endpoint khi cần. Mã nguồn Front-end được lập trình bằng Visual Studio Code và triển khai qua AWS Amplify. Postman được sử dụng để kiểm tra lỗi, xác thực endpoint API và đảm bảo cấu hình CORS. API Backend phải duy trì độ trễ thấp cho thao tác RSVP và có cảnh báo ngân sách qua AWS Billing.
### 5. Lộ trình & Mốc triển khai  
- *Trước thực tập (Tháng 0)*: Chuẩn bị kiến thức nền tảng về cloud, lập trình web, tạo repository trên GitHub và cài đặt môi trường làm việc bao gồm Visual Studio Code và Postman.  
- *Thực tập (Tháng 1–3)*:  
    - Tháng 1: Học AWS & Khởi tạo Hạ tầng: Tìm hiểu các dịch vụ AWS cốt lõi, cấu hình Amazon VPC với Private Subnet, tạo bảng dữ liệu trên Amazon DynamoDB và thiết lập cơ sở dữ liệu trên RDS/Aurora.  
    - Tháng 2: Thiết kế & Phát triển Backend - Frontend: Lập trình các hàm AWS Lambda xử lý logic nghiệp vụ RSVP, định tuyến qua Amazon API Gateway, dùng Postman kiểm thử lỗi API; đồng thời sử dụng Visual Studio Code xây dựng giao diện Web Single Page Application (SPA).  
    - Tháng 3: Triển khai, Tự động hóa & Tối ưu: Đẩy mã nguồn Frontend lên GitHub, kết nối AWS Amplify để tự động hóa quy trình CI/CD, bật Amazon CloudWatch để ghi log và thiết lập cảnh báo ngân sách tự động (Budget Alarms) qua AWS Billing. 
- *Sau triển khai*: Nghiên cứu, đánh giá hiệu năng hệ thống, theo dõi tối ưu chi phí vận hành và lập báo cáo kỹ thuật tổng kết dự án.  

### 6. Ước tính ngân sách  
Có thể xem chi phí trên [AWS Pricing Calculator](https://calculator.aws/#/estimate?id=621f38b12a1ef026842ba2ddfe46ff936ed4ab01)  
Hoặc tải [tệp ước tính ngân sách](../attachments/budget_estimation.pdf).  

*Chi phí hạ tầng*  
- AWS Amplify: $0.01/phút build, $0.023/GB storage, $0.15/GB data (100 phút build + 5 GB storage + 15 GB data served).  
- Amazon S3: $0.023/GB storage + request cost (5 GB lưu trữ + 10,000 PUT/GET requests).  
- Amazon API Gateway: $1.00 / 1 triệu requests (1,000,000 HTTP API requests).  
- AWS Lambda: $0.20 / 1M requests + $0.0000166667/GB-s (1,000,000 requests (128MB RAM, 300ms/req)).  
- Amazon DynamoDB: $0.25/GB + $1.25/M WCU + $0.25/M RCU (25 GB storage + On-Demand Read/Write (1M WCU/RCU)).  
- Amazon CloudWatch: $0.50/GB ingested + $0.03/GB storage (5 GB logs ingested and stored).
- AWS Budgets: Miễn phí 2 cảnh báo đầu tiên (Cảnh báo chi phí tự động).  

*Tổng*: Với tải dự kiến của một sự kiện vừa và nhỏ, ngân sách hạ tầng ước tính khoảng 16.5 – 17 USD/tháng (tương đương khoảng 410.000 – 430.000 VNĐ/tháng). Đây là ước tính dựa trên các giả định ở trên, không phải chi phí production đã đo thực tế. Chi phí thực tế phụ thuộc chủ yếu vào traffic, dung lượng DynamoDB và lượng log trên CloudWatch.  
- *Phần cứng bổ sung*: Mô hình Serverless không yêu cầu phần cứng bổ sung. Máy tính cá nhân hiện có được xem là điều kiện phát triển, không phải chi phí vận hành AWS.

### 7. Đánh giá rủi ro  
*Ma trận rủi ro*  
- Rủi ro chi phí: Ảnh hưởng: Cao | Khả năng: Trung bình. Request tăng đột biến hoặc tấn công DDoS khiến chi phí vượt ngân sách ước tính.
- Rủi ro hiệu năng: Ảnh hưởng: Trung bình | Khả năng: Thấp. Lượng RSVP tăng đột ngột làm nghẽn API Gateway hoặc chạm giới hạn DynamoDB.  
- Rủi ro bảo mật: Ảnh hưởng: Cao | Khả năng: Thấp. Lộ API, sai cấu hình IAM/CORS dẫn đến truy cập trái phép hoặc sai lệch dữ liệu. 

*Chiến lược giảm thiểu*  
- Kiểm soát chi phí: Đặt cảnh báo AWS Budgets ở mốc $1.00 và cấu hình giới hạn (Rate Limit) trên API Gateway. 
- Phân quyền & Mở rộng: Dùng DynamoDB On-Demand tự mở rộng và áp dụng quyền tối thiểu (Least Privilege) cho Lambda qua IAM. 
- Kiểm thử & Chặn lỗi: Dùng Postman test kỹ các kịch bản lỗi, validate dữ liệu đầu vào và chỉ mở CORS cho domain Amplify.

*Kế hoạch dự phòng*  
- Xử lý ngắt chi phí: Khi có cảnh báo, soi CloudWatch log tìm Lambda/API bất thường để khóa hoặc siết Throttling kịp thời. 
- Sao lưu dữ liệu: Bật Point-in-Time Recovery (PITR) trên DynamoDB để sẵn sàng khôi phục dữ liệu RSVP khi có sự cố.  
- Khôi phục dịch vụ: Lưu mã nguồn trên GitHub để có thể chuyển Front-end sang Vercel/Netlify hoặc chuyển API sang Mock Data nếu AWS Amplify gặp sự cố.  
### 8. Kết quả kỳ vọng  
*Cải tiến kỹ thuật*: Dự án xây dựng thành công hạ tầng Serverless 3-Tier tối ưu, đạt độ trễ thấp và tự động mở rộng theo lưu lượng thực tế qua AWS Lambda và DynamoDB. Quy trình phát triển được tự động hóa CI/CD từ GitHub sang AWS Amplify, kết hợp kiểm thử lỗi API bằng Postman và bảo mật đa lớp trong Amazon VPC.
*Giá trị dài hạn*: Khi traffic gần như không hoạt động, phần chi phí biến đổi có thể khoảng $0.50 – $1.00/tháng, trong khi mức ước tính theo tải sự kiện ở trên là khoảng $16.50 – $17.00/tháng. Dự án cung cấp một bộ khung hạ tầng có tính tái sử dụng cao, dễ mở rộng cho sự kiện lớn hơn và tích hợp thêm tính năng gửi email hoặc phân tích dữ liệu tự động.

### 9. Reflection & Hướng phát triển

*Khó khăn gặp phải:*  
Trong quá trình triển khai, nhóm gặp phải một số rào cản chính như việc kết nối và cấu hình nhiều dịch vụ AWS cùng lúc (API Gateway, Lambda, DynamoDB, VPC, Amplify), khó khăn trong việc debug lỗi API và CORS, cùng với thách thức về chi phí vận hành và bảo mật quyền truy cập. Ngoài ra, việc lập kế hoạch triển khai theo từng giai đoạn cũng cần sự tỉ mỉ để tránh sai sót khi phát hành hệ thống.

*Cách giải quyết:*  
Nhóm đã chia quá trình làm việc thành các module rõ ràng, bắt đầu từ hạ tầng, sau đó đến backend, rồi frontend và cuối cùng là kiểm thử giám sát. Mỗi bước đều được test kỹ thông qua Postman, CloudWatch Logs và AWS Management Console. Để giải quyết vấn đề bảo mật và chi phí, nhóm áp dụng nguyên tắc least privilege cho IAM, giới hạn CORS ở domain đáng tin cậy, và thiết lập cảnh báo ngân sách để kiểm soát tài nguyên trong quá trình chạy thử.

*Hướng phát triển trong tương lai:*  
Dự án có thể tiếp tục mở rộng theo hướng tích hợp hệ thống thông báo email/SMS tự động, báo cáo thống kê lượt đăng ký và hiệu suất sự kiện, đồng thời bổ sung dashboard quản trị cho ban tổ chức. Ngoài ra, hệ thống có thể phát triển thành nền tảng tổng quát cho nhiều sự kiện khác nhau, hỗ trợ quản lý QR check-in, tối ưu trải nghiệm khách mời và tích hợp phân tích dữ liệu bằng AI để cải thiện quyết định vận hành trong tương lai.
