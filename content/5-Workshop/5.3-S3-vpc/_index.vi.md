---
title : "Tạo cảnh báo ngân sách"
date : 2024-01-01 
weight : 3
chapter : false
pre : " <b> 5.3. </b> "
---

#### Sử dụng Billing and Cost Management

Trong phần này, bạn sẽ tạo ra một bảng thống kê số tiền cần đóng hàng tháng khi sử dụng ứng dụng AWS. Công cụ này giúp cho việc kiểm soát số tiền khi sử dụng AWS trở nên hiệu quả hơn. Công cụ này cũng cảnh báo chúng ta khi số tiền trả cho công cụ vượt quá mức cho phép cũng như tính tổng số tiền của các công cụ đang sử dụng.

Trong quá trình học, nên đặt ngưỡng cảnh báo thấp để phát hiện sớm việc sử dụng tài nguyên ngoài dự kiến. Budget không tự động dừng tài nguyên; công cụ chỉ gửi thông báo để bạn kiểm tra và xử lý.
![overview](/images/5-Workshop/3.jpg)
1. Nhấn vào Budgets ở cột bên trái để hiện ra trang chứa nơi bạn tạo trang tính toán chi tiêu cho từng tháng. Nhấn vào nút Create budget nền vàng bên phải để tạo thêm budget mới.
![Budgets](/images/5-Workshop/3.2.jpg)
2. Chọn Monthly cost budget để tạo ra ngân sách chi tiêu hàng tháng nếu vượt qua sẽ được gửi thông qua email được cung cấp bên dưới. Có thể thay đổi số tiền nếu vượt qua sẽ hiện cảnh báo.
![Create budgets](/images/5-Workshop/3.3.jpg)

3. Sau khi tạo Billing and Cost Management sẽ gửi thông báo qua email khi quá tiền hoặc sẽ hiện lên trên chính của AWS cho dễ quan sát. Trong đó gồm có các công cụ đang sử dụng với số tiền phải trả và sơ đồ theo tháng. 
![Billing and Cost Management](/images/5-Workshop/3.1.jpg)

Sau khi lưu budget, hãy kiểm tra địa chỉ email và xác nhận trạng thái budget đang hoạt động. Thường xuyên xem bảng chi phí trong suốt workshop, đặc biệt sau khi tạo database, Lambda function, API integration hoặc tài nguyên lưu trữ.
 












