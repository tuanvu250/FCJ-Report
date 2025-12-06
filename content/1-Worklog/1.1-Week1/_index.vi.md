---
title: "Worklog Tuần 1"
date: "2025-09-14"
weight: 1
chapter: false
pre: " <b> 1.1. </b> "
---
### Mục tiêu tuần 1:

- **Onboarding & Setup**: Làm quen văn hóa FCJ, chuẩn bị môi trường (VS Code, Git, CLI) và thiết lập tài khoản AWS bảo mật (IAM, MFA).
- **Networking Foundations**: Nắm vững VPC, Subnet, Route Table, NAT Gateway và các thành phần mạng cốt lõi.
- **Compute Services**: Triển khai EC2, kết nối SSH, tìm hiểu về Global Infrastructure và các loại VM.
- **Hybrid DNS & Connectivity**: Thiết lập Route 53 Resolver cho môi trường Hybrid và cấu hình Site-to-Site VPN labs.
- **Compute Deep Dive**: Tìm hiểu sâu về Auto Scaling, EFS, FSx và các dịch vụ tính toán khác.

### Các công việc cần triển khai trong tuần này:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 1 | - Làm quen thành viên FCJ <br> - Đọc và lưu ý nội quy/quy định <br> - Chuẩn bị công cụ làm workshop (VS Code, Hugo, ...) <br> - Giới thiệu về AWS & các khái niệm cơ bản | 08/09/2025 | 08/09/2025 | <https://van-hoang-kha.github.io/vi/> |
| 2 | - Tạo mới tài khoản AWS <br> - Kích hoạt MFA cho Tài khoản AWS <br> - Tạo Admin Group và Admin User <br> - Hỗ trợ Xác thực Tài khoản <br> - Khám phá và cấu hình AWS Management Console <br> - Tạo và Quản Lý Các Trường Hợp Hỗ Trợ trong AWS | 09/09/2025 | 09/09/2025 | <https://000001.awsstudygroup.com/vi/> |
| 3 | - Các dịch vụ mạng trên AWS: <br>&emsp; + VPC, Subnet, Route Table <br>&emsp; + Internet Gateway, NAT Gateway <br>&emsp; + Security Group & NACL <br>&emsp; + VPC Peering, Transit Gateway (khái niệm) <br>&emsp; + Elastic Load Balancing, Route 53 (DNS)| 10/09/2025 | 10/09/2025 | <https://github.com/tuanvu250/AWS-FCJ/blob/main/module/module-02/note.md> |
| 4 | - Thực hành EC2: <br>&emsp; + Tạo EC2 instance <br>&emsp; + Kết nối SSH <br>&emsp; + Cấu hình Site to Site VPN | 11/09/2025 | 11/09/2025 | <https://000003.awsstudygroup.com/> |
| 5 | - Thiết lập Hybrid DNS với Route 53 Resolver: <br>&emsp; + Kết nối đến RDGW <br>&emsp; + Triển khai Microsoft AD <br>&emsp; + Thiết lập DNS | 12/09/2025 | 12/09/2025 | <https://000010.awsstudygroup.com/> |
| 6 | - Thiết lập VPC Peering <br>&emsp; + Tạo kết nối Peering giữa VPCs <br>&emsp; + Cập nhật Route tables và kiểm thử kết nối <br> - Dịch vụ Compute VM trên AWS <br> - Amazon Elastic Compute Cloud (EC2) <br> - EC2 Auto Scaling - EFS/FSx - Lightsail - MGN <br> - Tìm hiểu AWS Global Infrastructure | 13/09/2025 | 13/09/2025 | <https://000019.awsstudygroup.com/> <br> <https://github.com/tuanvu250/AWS-FCJ/blob/main/module/module-03/note.md> |

### Kết quả đạt được tuần 1:

- **Environment Ready**: Hoàn tất setup công cụ, tài khoản AWS an toàn với Admin Group và MFA.
- **Network Deployed**: Triển khai thành công VPC, Subnets, Security Groups và hiểu rõ luồng mạng.
- **Compute Launched**: Tạo và kết nối thành công EC2 instance, nắm vững các tùy chọn hình thức mua.
- **Hybrid Connectivity**: Cấu hình thành công DNS Resolver và VPN cho mô hình lai.
- **Knowledge Base**: Ghi chú đầy đủ về Global Infa, Region, AZ và các dịch vụ Compute mở rộng.
