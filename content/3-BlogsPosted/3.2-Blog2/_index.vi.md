---
title: "Blog 2"
date: 2024-01-01
weight: 1
chapter: false
pre: " <b> 3.2. </b> "
---
# Understanding techniques to reduce AWS Lambda costs in serverless applications
Bài viết trên AWS Compute Blog chia sẻ cách tối ưu chi phí AWS Lambda hiệu quả mà không cần viết lại code, tập trung vào việc tinh chỉnh cấu hình phần cứng và tận dụng các công cụ phân tích tự động.
Điểm sáng của kiến trúc này:

- Tìm điểm cân bằng cấu hình (AWS Lambda Power Tuning): Công cụ mã nguồn mở giúp test tự động nhiều mức RAM (128MB - 10,240MB) để tìm ra khoảng dung lượng giúp hàm chạy nhanh nhất với chi phí rẻ nhất.
- Đổi chip ARM (AWS Graviton2): Chuyển từ chip x86 sang Graviton2 giúp tăng 19% hiệu năng và giảm ngay 20% chi phí tính toán mà không cần sửa code.
- Tối ưu bằng AI (AWS Compute Optimizer): Dùng Machine Learning phân tích lịch sử vận hành ứng dụng thực tế để đưa ra đề xuất dung lượng RAM chuẩn xác.
- Tối ưu kép (Chi phí & Hiệu năng): Tăng RAM hợp lý sẽ tăng thêm CPU tương ứng, từ đó rút ngắn thời gian xử lý (duration) và cải thiện tốc độ phản hồi cho người dùng.

Tóm lại: Thay vì đoán mò cấu hình, việc áp dụng các công cụ benchmark tự động và chuyển sang chip Graviton2 giúp tiết kiệm trực tiếp từ 20%–34% chi phí AWS Lambda một cách dễ dàng.

#AWS #Serverless #AWSLambda #Graviton2 #CostOptimization #CloudComputing

📌 Nguồn bài viết gốc: https://aws.amazon.com/vi/blogs/compute/understanding-techniques-to-reduce-aws-lambda-costs-in-serverless-applications/
![Blog 2](/images/5-Workshop/3.5.jpg)