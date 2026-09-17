---
title: "Blog 2"
date: 2024-01-01
weight: 1
chapter: false
pre: " <b> 3.2. </b> "
---
# Understanding techniques to reduce AWS Lambda costs in serverless applications
1. Thách thức vận hành
Mặc dù kiến trúc Serverless (không máy chủ) giúp giảm chi phí nhờ mô hình chỉ trả tiền khi sử dụng (pay-per-use), các ứng dụng có lượng truy vấn cao vẫn có thể phát sinh chi phí AWS Lambda lớn nếu không được tối ưu đúng cách. Thách thức chính nằm ở việc thiết lập cấu hình tài nguyên (Memory/CPU) phù hợp, chọn đúng kiến trúc chip xử lý và tránh lãng phí thời gian thực thi code mà không cần phải viết lại toàn bộ ứng dụng.
2. Giải pháp kỹ thuật & Công cụ tối ưu
Bài viết trên AWS Compute Blog hướng dẫn các chiến lược tối ưu chi phí Lambda tập trung vào cấu hình:
- AWS Lambda Power Tuning: Công cụ mã nguồn mở chạy thử nghiệm hàm Lambda ở nhiều mức dung lượng RAM (từ 128MB đến 10,240MB) để tìm điểm cân bằng "sweet spot" giữa thời gian chạy và chi phí.
- Chuyển đổi sang vi xử lý AWS Graviton2 (Arm-based): Thay đổi kiến trúc chip thực thi từ x86 sang Arm giúp tăng hiệu năng lên tới 19% trong khi chi phí giảm thêm 20%.
- AWS Compute Optimizer: Dịch vụ phân tích dữ liệu lịch sử vận hành (qua Machine Learning) để đưa ra đề xuất cấu hình bộ nhớ tối ưu cho các ứng dụng đã chạy trên môi trường Production.
3. Giá trị mang lại
- Tiết kiệm chi phí trực tiếp: Giảm tới 20%–34% chi phí tính toán Lambda chỉ bằng việc thay đổi cấu hình phần cứng (chuyển sang Graviton2) mà không cần sửa đổi mã nguồn.
- Tối ưu hiệu năng: Việc điều chỉnh đúng dung lượng RAM giúp tăng tỷ lệ CPU tương ứng, giảm thời gian thực thi (duration) và cải thiện tốc độ phản hồi cho end-user.
- Ra quyết định dựa trên dữ liệu: Loại bỏ việc đoán mò cấu hình hạ tầng nhờ các công cụ benchmark tự động.

📌 Nguồn bài viết gốc: https://aws.amazon.com/vi/blogs/compute/understanding-techniques-to-reduce-aws-lambda-costs-in-serverless-applications/
![Blog 2](/images/5-Workshop/3.5.jpg)