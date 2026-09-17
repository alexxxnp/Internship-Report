---
title : "Các bước chuẩn bị"
date : 2024-01-01 
weight : 2
chapter : false
pre : " <b> 5.2. </b> "
---

#### Để đảm bảo quá trình thực hành workshop diễn ra thuận lợi, cần hoàn thành các bước chuẩn bị theo thứ tự dưới đây:

1. Khởi tạo tài khoản & Quyền truy cập
Tài khoản AWS: Đảm bảo bạn đã đăng nhập vào AWS Management Console với tài khoản có đủ quyền hạn (Administrator hoặc có quyền tạo/quản lý các tài nguyên trong bài).

Region: Chọn đúng Region mặc định được khuyến nghị cho workshop (ví dụ: ap-southeast-1 - Singapore hoặc Region được chỉ định).

2. Cài đặt các công cụ cần thiết (Prerequisites)
Cài đặt và cấu hình các công cụ bên dưới trên máy cục bộ (Local Environment) hoặc trên AWS Cloud9:

AWS CLI: Cài đặt phiên bản mới nhất và chạy lệnh aws configure để cấu hình Access Key, Secret Key, và Default Region.

Git: Kiểm tra Git bằng lệnh git --version để sẵn sàng cho việc clone repository.

Môi trường Runtime: Cài đặt phiên bản Node.js/Python/Java tùy theo yêu cầu của ứng dụng mẫu.

Lưu mã nguồn dự án trong Git repository trên máy cục bộ. Không đặt AWS credential lâu dài trong mã nguồn hoặc commit lên GitHub. Hãy sử dụng IAM role, credential tạm thời hoặc profile AWS CLI được khuyến nghị cho môi trường của bạn.

3. VPCs cần có
![VPCs](/images/5-Workshop/2.1.jpg)
4. Subnets cần có
![Subnets](/images/5-Workshop/2.2.jpg)
5. Inbound rules cần có
![Inbound rules](/images/5-Workshop/2.3.jpg)

Trước khi tiếp tục, hãy xác nhận Region được chọn giống nhau trên AWS Console, CLI và tất cả dịch vụ. Đồng thời kiểm tra VPC, subnet đúng với sơ đồ kiến trúc và inbound rule chỉ mở các port cần thiết cho bài lab.