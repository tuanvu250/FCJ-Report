---
title: "Worklog Tuần 5"
date: "2025-10-12"
weight: 1
chapter: false
pre: " <b> 1.5. </b> "
---

### Mục tiêu tuần 5:

- **Containerization**: Nắm vững **Docker**, **Docker Compose** và triển khai ứng dụng container trên **AWS ECS**.
- **Data Lake Architecture**: Xây dựng Data Lake hoàn chỉnh với **S3**, **AWS Glue** (Catalog) và **Athena** (Analytics).
- **NoSQL Deep Dive**: Thực hành chuyên sâu với **Amazon DynamoDB** (Partition/Sort Key, GSI/LSI).
- **DB Comparison**: So sánh chi tiết kiến trúc và hiệu năng giữa **Amazon RDS** và **Amazon Aurora**.
- **Analytics Optimization**: Tối ưu hóa chi phí và hiệu năng truy vấn dữ liệu lớn.


### Các công việc cần triển khai trong tuần này:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 1 | - Tìm hiểu về docker, docker-compose <br> - So sánh Amazon RDS vs Amazon Aurora | 06/10/2025 | 06/10/2025 | <https://github.com/tuanvu250/AWS-FCJ/tree/main/bonus/docker> <br> <https://docs.docker.com/get-started/> <br> <https://000054.awsstudygroup.com/vi/> |
| 2 | -Thực hành Triển khai ứng dụng trên Docker với AWS <br> - Thực hành Triển khai ứng dụng trên Amazon Elastic Container Service <br> - Thực hành DataLake on AWS <br>&emsp; + Thu thập và lưu trữ dữ liệu <br>&emsp; + Tạo Data Catalog (Amazon Glue)<br>&emsp; + Phân tích và trực quan hóa (Amazon Athena) | 07/10/2025 | 07/10/2025 | <https://000015.awsstudygroup.com/vi/> <br> <https://000016.awsstudygroup.com/vi/> <br> <https://000005.awsstudygroup.com/vi/> <br> <https://000035.awsstudygroup.com/vi/> |
| 3 | - Thực hành Amazon DynamoDB Immersion Day | 08/10/2025 | 08/10/2025 | <https://000039.awsstudygroup.com/vi/> |
| 4 | - Thực hành Amazon DynamoDB Immersion Day | 09/10/2025 | 09/10/2025 | <https://000039.awsstudygroup.com/vi/> |
| 5 | - Thực hành Phân tích chi phí và hiệu năng sử dụng với AWS Glue và Amazon Athena <br> - Thực hành Làm việc với Amazon DynamoDB | 10/10/2025 | 10/10/2025 | <https://000040.awsstudygroup.com/vi/> <br> <https://000060.awsstudygroup.com/vi/> |    
| 6 | - Thực hành Xây dựng Datalake với dữ liệu của bạn | 11/10/2025 | 11/10/2025 | <https://000070.awsstudygroup.com/vi/> |

### Kết quả đạt được tuần 5:

- **Container Ops**: Đóng gói, quản lý Docker images trên ECR và vận hành cụm ECS thành công.
- **Data Lake Live**: Hệ thống thu thập, lưu trữ và phân tích dữ liệu serverless đã đi vào hoạt động.
- **DynamoDB Pro**: Thiết kế bảng NoSQL hiệu quả, hiểu rõ mô hình dữ liệu và các chỉ số hiệu năng.
- **DB Architecture**: Phân tích rõ ràng ưu nhược điểm của RDS vs Aurora để ra quyết định lựa chọn.
- **Cost Effective**: Áp dụng các kỹ thuật tối ưu hóa partition và query để giảm chi phí phân tích dữ liệu.
