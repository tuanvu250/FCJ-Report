---
title: "Worklog Tuần 3"
date: "2025-09-14"
weight: 1
chapter: false
pre: " <b> 1.3. </b> "
---

### Mục tiêu tuần 3:

- **Advanced Storage**: Thành thạo **Amazon S3** (Classes, Lifecycle, Access Points, Glacier) và các tính năng bảo mật.
- **Data Migration**: Nắm vững giải pháp dịch chuyển dữ liệu với **Snow Family** và **Storage Gateway**.
- **VM Import/Export**: Thực hành di chuyển máy ảo On-premise lên AWS và ngược lại với **VM Import/Export**.
- **Resource Optimization**: Tối ưu hóa chi phí EC2 bằng **Lambda** và quản lý tài nguyên hiệu quả với **Tags/Resource Groups**.
- **Backup Strategy**: Triển khai chiến lược sao lưu toàn diện cho hệ thống với **AWS Backup**.


### Các công việc cần triển khai trong tuần này:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 1 | - Dịch vụ lưu trữ trên AWS: <br>&emsp; + Amazon Simple Storage Service ( S3 ) <br>&emsp; + Access Point <br>&emsp; + Storage Class <br>&emsp; +  S3 Static Website & CORS | 22/09/2025 | 22/09/2025 | <https://github.com/tuanvu250/AWS-FCJ/blob/main/module/module-04/note.md> |
| 2 | - Dịch vụ lưu trữ trên AWS: <br>&emsp; + Control Access <br>&emsp; + Object Key & Performance <br>&emsp; + Glacier <br>&emsp; +  Snow Family - Storage Gateway - Backup  | 23/09/2025 | 23/09/2025 | <https://github.com/tuanvu250/AWS-FCJ/blob/main/module/module-04/note.md> |
| 3 | - Thực hành triển khai AWS Backup cho hệ thống: <br>&emsp; + Tạo S3 Bucket & triển khai hạ tầng <br>&emsp; + Tạo Backup plan, thiết lập thông báo <br>&emsp; + Kiểm tra hoạt động <br>&emsp; | 24/09/2025 | 24/09/2025 | <https://000013.awsstudygroup.com/vi/> |
| 4 | - Thực hành về VM Import/Export: <br>&emsp; + Import máy ảo vào AWS <br>&emsp; + Triển khai EC2 Instance từ AMI <br>&emsp; + Export EC2 Instance từ AWS <br>&emsp; | 24/09/2025 | 24/09/2025 | <https://000014.awsstudygroup.com/vi/> |
| 5 | - Thực hành tối ưu chi phí EC2 với Lambda: <br>&emsp; + Tạo Tag cho Instance & Tạo Role cho Lambda <br>&emsp; + Tạo Lambda Function & kiểm tra kết quả <br> - Quản lý tài nguyên bằng Tag và Resource Groups <br> - Quản lý truy cập vào dịch vụ EC2 Resource Tag với AWS IAM <br> - Giới hạn quyền của user với IAM Permission Boundary <br> - Tìm hiểu S3 Lifecycle Policies & Intelligent-Tiering | 26/09/2025 | 26/09/2025 | <https://000022.awsstudygroup.com/vi/> <br> <https://000027.awsstudygroup.com/vi/> <br> <https://000028.awsstudygroup.com/vi/> <br> <https://000030.awsstudygroup.com/vi/> |
| 6 | - Thực hành Khởi Đầu Với Amazon S3: <br>&emsp; + Tạo S3 bucket và tải dữ liệu web mẫu <br>&emsp; + Bật tính năng static website và kiểm tra <br>&emsp; + Tăng tốc Static Website với Cloudfront <br>&emsp; + Bucket Versioning và chuyển S3 Object sang region khác  | 27/09/2025 | 27/09/2025 | <https://000057.awsstudygroup.com/vi/> |

### Kết quả đạt được tuần 3:

- **Storage Expert**: Hiểu sâu về các lớp lưu trữ S3, chính sách vòng đời và Intelligent-Tiering để tối ưu chi phí.
- **Migration Ready**: Nắm rõ quy trình sử dụng Snow Family và Storage Gateway cho các kịch bản di chuyển dữ liệu lớn.
- **VM Mobility**: Thành công import/export máy ảo và triển khai EC2 từ AMI tùy chỉnh.
- **Cost Savings**: Tự động hóa việc gắn thẻ và tắt/bật instance bằng Lambda để tiết kiệm chi phí.
- **Governance**: Quản lý truy cập và tài nguyên chặt chẽ thông qua Tag, Resource Groups và IAM Permission Boundaries.
