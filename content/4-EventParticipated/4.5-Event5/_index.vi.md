---
title: "Event 5"
date: "2025-11-17"
weight: 1
chapter: false
pre: " <b> 4.5. </b> "
---

# Bài thu hoạch “AWS Cloud Mastery Series #2: Từ DevOps, IaC đến Container & Observability”

### Mục Đích Của Sự Kiện

- **Định hình Tư duy DevOps:** Hiểu đúng bản chất của DevOps trong việc tối ưu hóa Vòng Đời Giá Trị (The Value Cycle) và quy trình phát triển phần mềm.
- **Làm chủ Hạ tầng (IaC):** Chuyển đổi tư duy quản trị từ thủ công sang tự động hóa hoàn toàn với các công cụ như CloudFormation, Terraform và CDK.
- **Chiến lược Container hóa:** Nắm vững các tiêu chí lựa chọn nền tảng vận hành Container hiệu quả (EKS, ECS hay App Runner).
- **Giám sát chuyên sâu (Observability):** Thiết lập hệ thống giám sát chủ động để đảm bảo tính ổn định và khả năng phục hồi của dịch vụ.

### Danh Sách Diễn Giả

- **Đội ngũ chuyên gia AWS & Cloud Engineers:** Mang đến những kiến thức thực chiến và các Best Practices (Thực hành tốt nhất) trong ngành.

### Nội Dung Chi Tiết

#### **1. DevOps Mindset & CI/CD Pipeline**

DevOps được định nghĩa lại không chỉ là một vị trí công việc, mà là văn hóa cộng tác nhằm luân chuyển giá trị đến khách hàng một cách nhanh nhất và an toàn nhất.

- **The Value Cycle (Vòng Đời Giá Trị):** Quy trình khép kín từ ý tưởng (Insights) đến sản phẩm (Delivery). Mục tiêu tối thượng là cân bằng giữa Tốc độ phát hành (Speed) và Sự ổn định hệ thống (Stability).
- **Giải mã CI/CD:**
  - **Continuous Integration (CI):** Tự động Build & Test mỗi khi có code mới để phát hiện lỗi sớm (Fail fast).
  - **Continuous Delivery:** Sản phẩm luôn ở trạng thái sẵn sàng deploy (cần một cú click chuột để ra Production).
  - **Continuous Deployment:** Tự động hóa 100% quy trình ra Production (nơi niềm tin vào quy trình test là tuyệt đối).
- **Nguyên tắc "Immutable Artifact":** Đóng gói ứng dụng thành một bản Build (Artifact) duy nhất và dùng nó để deploy cho mọi môi trường (Staging, Prod), đảm bảo tính nhất quán tuyệt đối.

#### **2. Infrastructure as Code (IaC) - Kỷ Nguyên Tự Động Hóa**

Loại bỏ hoàn toàn thói quen thao tác thủ công (ClickOps) tiềm ẩn nhiều rủi ro và sai sót.

- **AWS CloudFormation:** Giải pháp Native của AWS. Ổn định, hỗ trợ "Day-1" cho mọi tính năng mới. Sử dụng YAML/JSON.
- **Terraform:** Công cụ mã nguồn mở, thế mạnh về Multi-cloud. Sử dụng ngôn ngữ HCL. Quy trình **Write -> Plan -> Apply** giúp kiểm soát thay đổi một cách chặt chẽ trước khi áp dụng.
- **AWS CDK:** Dành cho Developer muốn dùng ngôn ngữ lập trình quen thuộc (Python, TS, Java...) để định nghĩa hạ tầng. Khả năng tùy biến và tái sử dụng code cực cao.

**Drift Detection:** Tính năng quan trọng giúp phát hiện sự sai lệch cấu hình (Configuration Drift) khi có sự can thiệp thủ công trái phép, giúp duy trì kỷ luật vận hành.

#### **3. Chiến Lược Containerization**

Lựa chọn nền tảng phù hợp cho Container:

- **Về Điều phối (Orchestration):**
  - **Amazon ECS:** Đơn giản, tích hợp sâu với AWS, chi phí vận hành thấp. Phù hợp cho phần lớn các ứng dụng thông thường.
  - **Amazon EKS (Kubernetes):** Mạnh mẽ, chuẩn mở, hệ sinh thái rộng lớn. Phù hợp cho các hệ thống phức tạp hoặc Enterprise hybrid-cloud.
- **Về Hạ tầng tính toán (Compute):**
  - **EC2:** Tự quản lý server. Linh hoạt tối đa nhưng tốn công bảo trì (patching, scaling).
  - **AWS Fargate:** Serverless cho Container. AWS lo hạ tầng, bạn chỉ cần lo chạy ứng dụng.
- **AWS App Runner:** Giải pháp PaaS đơn giản nhất ("Zero-ops") để chạy Web App từ Source code.

#### **4. Observability - Hơn Cả Monitoring**

Nếu Monitoring cho biết "Hệ thống có đang sống không?", thì Observability trả lời câu hỏi "Tại sao nó chạy chậm?".

- **Amazon CloudWatch:** Trung tâm thu thập Metrics, Logs và quản lý Cảnh báo (Alarms).
- **AWS X-Ray (Tracing):** Vẽ bản đồ đường đi của request qua các Microservices để tìm điểm nghẽn (Bottlenecks) và nguyên nhân gốc rễ.
- **3 Trụ Cột:** **Metrics** (Số liệu) + **Logs** (Nhật ký) + **Traces** (Vết).

### Trải nghiệm chi tiết trong Event

Buổi chia sẻ đã giúp tôi định hình lại tư duy của một Cloud Engineer thực thụ:

#### 1. Từ "Thợ gõ lệnh" sang "Kỹ sư nền tảng"
Tôi nhận ra vai trò của DevOps hiện đại không phải là người "ôm việc" deploy, mà là người xây dựng **Platform** tự động giúp Developer có thể tự phục vụ (Self-service) nhu cầu hạ tầng một cách nhanh chóng và tuân thủ quy chuẩn.

#### 2. Kỷ luật là sức mạnh
Việc tuân thủ nghiêm ngặt các nguyên tắc như **IaC** và **Immutable Infrastructure** là yếu tố sống còn để vận hành hệ thống quy mô lớn, giúp tránh khỏi những lỗi "chết người" do sai sót của con người.

#### 3. Sự lựa chọn thông minh
Không có công cụ tốt nhất cho mọi trường hợp. Với dự án Startup cần tốc độ, **CDK + App Runner** là lựa chọn tuyệt vời. Với hệ thống Enterprise cần kiểm soát chặt chẽ, **Terraform + EKS** là hướng đi đúng đắn.

### Tổng Kết

Chuyên đề **"DevOps & IaC"** là hành trang kiến thức cốt lõi:
- **Tư duy:** Tự động hóa là ưu tiên số 1.
- **Kỹ năng:** Thành thạo quy trình CI/CD và công cụ IaC.
- **Vận hành:** Luôn đặt Observability lên hàng đầu để làm chủ sức khỏe hệ thống.

#### Một số hình ảnh khi tham gia sự kiện
