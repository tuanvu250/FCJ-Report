---
title: "Worklog Tuần 12"
date: "2025-09-13"
weight: 1
chapter: false
pre: " <b> 1.12. </b> "
---

### Mục tiêu tuần 12:

- **Production Deployment**: Triển khai lên AWS S3 + CloudFront.
- **Docker Deployment**: Kiểm thử deploy với Docker.
- **Quality Assurance**: UAT, Security Audit, Documentation và Final Polish.

### Các công việc cần triển khai trong tuần này:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 1 | - **Static Export & AWS Deployment**: Cấu hình Next.js `output: export`. Upload static build lên S3 Bucket. Cấu hình CloudFront distribution trỏ về S3, thiết lập Custom Domain với Route 53 và chứng chỉ SSL ACM. | 24/11/2025 | 24/11/2025 | [AWS S3 Hosting](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html) |
| 2 | - **Docker Setup**: Viết `Dockerfile` multistage tối ưu dung lượng và `docker-compose.yml` cho production. Thực hiện build image và deploy thử nghiệm trên môi trường Staging EC2. | 25/11/2025 | 25/11/2025 | [Docker Docs](https://docs.docker.com/) |
| 3 | - **UAT & Hotfixes**: Mở truy cập cho nhóm tester/user chạy User Acceptance Testing (UAT). Theo dõi log lỗi, fix bug phát sinh và tinh chỉnh caching policy. | 26/11/2025 | 26/11/2025 | |
| 4 | - **Security & Performance**: Audit lại bảo mật API keys, cấu hình Content Security Policy (CSP). Phân tích bundle size, thực hiện code splitting và lazy loading để cải thiện chỉ số Lighthouse. | 27/11/2025 | 27/11/2025 | |
| 5 | - **Documentation & Code Quality**: Hoàn thiện tài liệu API (Swagger/Postman), cập nhật README.md hướng dẫn cài đặt. Chạy full linting và type-checking lần cuối để clean code. | 28/11/2025 | 28/11/2025 | |
| 6 | - **Final Polish & Preparation**: Rà soát lại toàn bộ UI/UX, đảm bảo không còn lỗi vặt. Đóng gói mã nguồn và chuẩn bị tài liệu kỹ thuật chờ bàn giao. <br> - Tham gia AWS Cloud Mastery Series #3: Cloud Security & Operations Mastery | 29/11/2025 | 29/11/2025 | |

### Kết quả đạt được tuần 12:

- **Triển khai thành công**: Website chạy ổn định trên Production (AWS) và Docker.
- **Sản phẩm hoàn thiện**: Đáp ứng mọi yêu cầu, bảo mật tốt, hiệu năng cao.
- **Sẵn sàng bàn giao**: Đã chuẩn bị đầy đủ tài liệu và mã nguồn chất lượng.
