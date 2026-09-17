---
title: "Worklog Tuần 4"
date: 2026-06-22
weight: 4
chapter: false
pre: " <b> 1.4. </b> "
---


### Mục tiêu tuần 4:
* Hiểu sâu về dịch vụ quản lý truy cập và nhận dạng AWS Identity and Access Management (IAM).
* Thiết lập phân quyền chuẩn Least Privilege qua IAM Users, Groups, Roles và Policies.
* Thực hành gán IAM Role cho EC2 để truy cập an toàn tài nguyên AWS khác.

### Các công việc cần triển khai trong tuần này:
| Thứ | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 2 | - Tìm hiểu các thành phần cốt lõi của AWS IAM: Users, Groups, Roles, Policies <br> - Học cú pháp JSON cấu trúc IAM Policy (Effect, Action, Resource, Condition) | 22/06/2026 | 22/06/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/introduction.html) |
| 3 | - Phân biệt Inline Policy vs Managed Policy (AWS Managed vs Customer Managed) <br> - Nghiên cứu cơ chế IAM Role và Temporary Credentials | 23/06/2026 | 23/06/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html) |
| 4 | - **Thực hành:** <br>&emsp; + Khởi tạo IAM User và gán MFA (Multi-Factor Authentication) <br>&emsp; + Tạo IAM Group và áp dụng chính sách Least Privilege <br>&emsp; + Kiểm thử phân quyền truy cập bằng IAM Policy Simulator | 24/06/2026 | 24/06/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa.html) |
| 5 | - **Thực hành Nâng cao:** <br>&emsp; + Khởi tạo IAM Role cấp quyền đọc/ghi S3 <br>&emsp; + Gán IAM Role cho EC2 Instance (Instance Profile) <br>&emsp; + Kiểm tra EC2 tương tác với S3 qua AWS CLI mà không dùng Access Key cứng | 25/06/2026 | 25/06/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html) |
| 6 | - Kiểm tra audit log bảo mật truy cập hệ thống qua AWS CloudTrail <br> - Tổng kết các best practices quản lý bảo mật tài khoản AWS | 26/06/2026 | 26/06/2026 | [https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html](https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html) |

### Kết quả đạt được tuần 4:
* Hiểu và viết thành thạo cấu trúc IAM Policy bằng định dạng JSON.
* Triển khai bảo mật tài khoản thành công với MFA và áp dụng nguyên tắc cấp quyền tối thiểu (Least Privilege).
* Áp dụng IAM Role trực tiếp lên EC2 Instance giúp loại bỏ hoàn toàn rủi ro lộ `Access Key` / `Secret Key` trong code.