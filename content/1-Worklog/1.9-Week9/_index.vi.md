---
title: "Worklog Tuần 9"
date: 2026-07-27
weight: 9
chapter: false
pre: " <b> 1.9. </b> "
---
{{% notice warning %}}
⚠️ **Lưu ý:** Các thông tin dưới đây chỉ nhằm mục đích tham khảo, vui lòng **không sao chép nguyên văn** cho bài báo cáo của bạn kể cả warning này.
{{% /notice %}}

### Mục tiêu tuần 9:
* Khai phá tư duy Cơ sở hạ tầng dưới dạng mã (Infrastructure as Code - IaC) với AWS CloudFormation.
* Tự động hóa việc khởi tạo, cập nhật và quản lý vòng đời tài nguyên đám mây bằng Template.
* Viết kịch bản tự động triển khai hạ tầng VPC, EC2, S3 chuẩn xác.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Khái niệm Infrastructure as Code (IaC) và lợi ích <br> - Tổng quan AWS CloudFormation: Stacks, Templates, Change Sets <br> - Cấu trúc file Template (YAML/JSON): Resources, Parameters, Outputs, Mappings | 27/07/2026 | 27/07/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html) |
| 3 | - Tìm hiểu các hàm nội tại (Intrinsic Functions): `Fn::Ref`, `Fn::GetAtt`, `Fn::Sub`, `Fn::Join` <br> - Khái niệm CloudFormation Drift Detection | 28/07/2026 | 28/07/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html) |
| 4 | - **Thực hành:** <br>&emsp; + Viết CloudFormation Template khởi tạo S3 Bucket và Security Group <br>&emsp; + Thực thi tạo Stack trên AWS Console / AWS CLI | 29/07/2026 | 29/07/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-using-console.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-using-console.html) |
| 5 | - **Thực hành Nâng cao:** <br>&emsp; + Viết Template tạo hoàn chỉnh Custom VPC, Subnets, Route Tables, Internet Gateway <br>&emsp; + Khởi tạo EC2 Instance bên trong VPC vừa tạo thông qua CloudFormation | 30/07/2026 | 30/07/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/sample-templates-services-us-west-2.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/sample-templates-services-us-west-2.html) |
| 6 | - Thực hành cập nhật Stack (Update Stack) và khôi phục sự cố khi Stack bị lỗi (Rollback) <br> - Đánh giá ưu điểm của IaC so với thao tác thủ công | 31/07/2026 | 31/07/2026 | [https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html) |

### Kết quả đạt được tuần 9:
* Hiểu sâu tư duy quản lý hạ tầng hiện đại Infrastructure as Code (IaC).
* Viết thành thạo kịch bản CloudFormation bằng cú pháp YAML/JSON.
* Tự động hóa hoàn toàn quy trình khởi tạo toàn bộ hạ tầng VPC và EC2 phức tạp chỉ bằng 1 câu lệnh ngắn gọn.