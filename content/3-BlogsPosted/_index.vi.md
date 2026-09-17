---
title: "Các bài blogs đã đăng"
date: 2024-01-01
weight: 3
chapter: false
pre: " <b> 3. </b> "
---


###  [Blog 1 - Replicate Amazon S3 bucket configurations across AWS Regions with AWS Step Functions](3.1-Blog1/)
Blog này hướng dẫn cách tự động hóa quy trình sao chép toàn bộ cấu hình của Amazon S3 Bucket (chính sách bảo mật, quy tắc vòng đời, mã hóa, thẻ) từ khu vực này sang khu vực khác (Multi-Region) bằng việc kết hợp AWS Step Functions và AWS Lambda. Giải pháp này khắc phục hạn chế của các công cụ mặc định như S3 Cross-Region Replication (CRR) vốn chỉ đồng bộ tệp dữ liệu chứ không sao chép cài đặt cấp bucket, giúp doanh nghiệp loại bỏ thao tác cấu hình thủ công tốn thời gian, đảm bảo tính đồng nhất bảo mật 1:1 và sẵn sàng cho phương án khôi phục sau sự cố (Disaster Recovery).

###  [Blog 2 - Understanding techniques to reduce AWS Lambda costs in serverless applications](3.2-Blog2/)
Blog này giải thích rằng mặc dù mô hình Serverless giúp giảm chi phí sở hữu (TCO) tới 57% so với máy chủ truyền thống nhờ loại bỏ công sức quản lý hạ tầng, nhưng chi phí thực thi Lambda vẫn chiếm phần lớn hóa đơn điện toán. Để tối ưu hóa chi phí này, bài viết đưa ra các giải pháp kỹ thuật cốt lõi bao gồm: điều chỉnh chính xác dung lượng bộ nhớ (Memory Allocation) để tối ưu thời gian xử lý nhờ công cụ AWS Lambda Power Tuning, chuyển đổi kiến trúc chip thực thi sang AWS Graviton2 (giảm tới 20% chi phí), và áp dụng AWS Compute Optimizer để phân tích, tự động đề xuất cấu hình tài nguyên phù hợp nhất cho hệ thống.

###  [Blog 3 - AI-assisted game production: From static concept to interactive prototype](3.3-Blog3/)
Bài blog này hướng dẫn ứng dụng Trí tuệ nhân tạo (Generative AI) thông qua dịch vụ Amazon Bedrock kết hợp với hạ tầng Serverless của AWS (AWS Fargate, AWS Lambda, Amazon API Gateway) để chuyển đổi nhanh các ý tưởng game tĩnh thành bản prototype tương tác chơi được. Giải pháp này giúp các nhà phát triển game giải quyết triệt để rào cản thời gian và chi phí ở giai đoạn đầu, cho phép thử nghiệm và kiểm chứng cơ chế chơi (gameplay mechanics) trong vài ngày thay vì mất nhiều tháng như quy trình truyền thống.