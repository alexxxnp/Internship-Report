---
title: "Worklog Tuần 3"
date: 2026-06-15
weight: 3
chapter: false
pre: " <b> 1.3. </b> "
---

### Mục tiêu tuần 3:
* Nắm vững dịch vụ lưu trữ đối tượng Amazon S3 và phân biệt các S3 Storage Classes.
* Cấu hình phân quyền an toàn cho S3 Bucket thông qua Bucket Policy và IAM Policy.
* Thực hành lưu trữ tĩnh, phân phối nội dung web tĩnh thông qua Amazon S3.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Tìm hiểu tổng quan về Amazon S3 (Simple Storage Service) <br> - Phân biệt các lớp lưu trữ: S3 Standard, S3 Intelligent-Tiering, Glacier,... | 15/06/2026 | 15/06/2026 | [https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html) |
| 3 | - Tìm hiểu bảo mật và phân quyền trên S3: S3 Bucket Policy, ACLs, Block Public Access <br> - Tìm hiểu tính năng S3 Versioning và Server-Side Encryption (KMS) | 16/06/2026 | 16/06/2026 | [https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-overview.html](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-overview.html) |
| 4 | - **Thực hành:** <br>&emsp; + Khởi tạo S3 Bucket <br>&emsp; + Tải tài nguyên (ảnh, assets) lên S3 <br>&emsp; + Cấu hình S3 Static Website Hosting | 17/06/2026 | 17/06/2026 | [https://docs.aws.amazon.com/AmazonS3/latest/userguide/HostingWebsiteOnS3Setup.html](https://docs.aws.amazon.com/AmazonS3/latest/userguide/HostingWebsiteOnS3Setup.html) |
| 5 | - Cấu hình CORS (Cross-Origin Resource Sharing) trên S3 Bucket <br> - Tích hợp S3 với ứng dụng web đơn giản để upload/download tệp tin | 18/06/2026 | 18/06/2026 | [https://docs.aws.amazon.com/AmazonS3/latest/userguide/enabling-cors-examples.html](https://docs.aws.amazon.com/AmazonS3/latest/userguide/enabling-cors-examples.html) |
| 6 | - Kiểm thử tính năng lifecycle rules tự động chuyển lưu trữ sang Glacier <br> - Tổng kết và tối ưu chi phí cho dịch vụ S3 | 19/06/2026 | 19/06/2026 | [https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html) |

### Kết quả đạt được tuần 3:
* Hiểu sâu về Amazon S3, cơ chế lưu trữ theo Key-Value và các lớp lưu trữ tối ưu chi phí.
* Triển khai thành công Static Website Hosting trên Amazon S3.
* Cấu hình chính xác Bucket Policy, CORS và mã hóa tài liệu lưu trữ.
* Thiết lập quy trình Lifecycle Rules giúp tự động chuyển tài liệu ít truy cập sang S3 Glacier để tiết kiệm ngân sách.