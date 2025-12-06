
---
title: "Bản đề xuất"
date: "2025-09-09"
weight: 2
chapter: false
pre: " <b> 2. </b> "
---

# Ứng dụng quản lý tài chính cá nhân (Vicobi)

### Bạn có thể đọc toàn bộ proposal ở đây: <a href="/files/2-Proposal/Vicobi_Proposal.pdf" download>Vicobi Proposal</a>

### 1. Tóm tắt điều hành

Dự án **Vicobi** (Personal Finance Management App) hướng đến việc cung cấp một nền tảng quản lý tài chính cá nhân thông minh, hiện đại và mang tính tự động hóa cao. Vicobi đơn giản hóa việc quản lý tài chính qua 4 trụ cột chính:

1.  **Ghi chép thông minh (Smart Recording):** Nhập liệu bằng giọng nói và quét hóa đơn, loại bỏ rào cản nhập liệu thủ công.
2.  **Lập ngân sách theo mục tiêu (Goal-based Budgeting):** Tự động hóa tạo và quản lý các hũ tiền (money jars) linh hoạt.
3.  **Phân tích & Kiểm soát:** Cung cấp báo cáo trực quan và hệ thống cảnh báo thông minh.
4.  **Trợ lý tài chính (AI Chatbot):** Tích hợp Chatbot AI đóng vai trò tư vấn viên, hỗ trợ giải đáp và nâng cao kiến thức tài chính.

Về mặt công nghệ, Vicobi được xây dựng trên kiến trúc **Microservices** sử dụng **.NET Aspire** và **FastAPI**, triển khai trên **AWS Cloud**, đảm bảo tính linh hoạt và an toàn dữ liệu. Quy trình phát triển tuân theo mô hình **Agile/Scrum** (2 tuần/sprint trong giai đoạn phát triển chính), với mục tiêu hoàn thành MVP trong 2 tháng thực thi.

### 2. Tuyên bố vấn đề

#### Vấn đề hiện tại

Trong thị trường năng động hiện nay, người dùng gặp khó khăn trong việc kiểm soát tài chính do "sức ỳ hành vi" — ngại ghi chép thủ công từng giao dịch. Các ứng dụng hiện có (như Money Lover, Misa Money Keeper) vẫn dựa nhiều vào nhập liệu bằng tay, gây ra tình trạng "mệt mỏi khi nhập liệu" (input fatigue) và tỷ lệ bỏ cuộc cao.

#### Giải pháp

Vicobi giải quyết vấn đề bằng cách tự động hóa cao độ quy trình nhập liệu thông qua AWS Cloud và Microservices:

- **Công nghệ lõi:** Tích hợp AI xử lý giọng nói tiếng Việt (Voice-to-Text) và nhận diện hóa đơn (OCR) chi tiết.
- **Kiến trúc tối ưu:** Sử dụng **AWS ECS Fargate** chạy mô hình Multi-container Task (gộp Backend .NET và AI Service) để giảm chi phí hạ tầng nhưng vẫn đảm bảo giao tiếp liền mạch.
- **Frontend hiện đại:** Sử dụng **Next.js** được lưu trữ trên **Amazon S3** và phân phối toàn cầu qua **Amazon CloudFront**.

#### Lợi ích và hoàn vốn đầu tư (ROI)

Giải pháp mang lại lợi thế cạnh tranh rõ rệt:

- **Giá trị người dùng:** Giảm hơn **70%** thao tác thủ công. Độ chính xác nhận diện giọng nói đạt **90%** và trích xuất hóa đơn đạt **80%**.
- **Hiệu quả kinh tế:** Tận dụng tối đa AWS Free Tier (S3, CloudFront, Cognito). Ngân sách vận hành tinh gọn khoảng **~$60/tháng** cho hạ tầng và **~$15/tháng** cho AI compute.
- **Hoàn vốn:** Dự kiến đạt ROI trong **6–12 tháng** nhờ tiết kiệm thời gian và tăng hiệu suất.
- **Khả năng mở rộng:** Kiến trúc Microservices sẵn sàng cho việc tích hợp Mobile App hoặc Open Banking.

### 3. Kiến trúc giải pháp

Hệ thống được thiết kế theo mô hình **Microservices** phân tán, sử dụng API Gateway làm điểm nhập duy nhất.

![Ứng dụng quản lý tài chính cá nhân Software Architecture](/images/2-Proposal/development_architecture.png)

#### Chi tiết Tech Stack:

| Thành phần       | Công nghệ            | Chi tiết                                                                   |
| :--------------- | :------------------- | :------------------------------------------------------------------------- |
| **Frontend**     | **Next.js 16**       | App Router, TypeScript, Tailwind CSS, Zustand, React Query.                |
| **Backend Core** | **.NET Aspire**      | Điều phối Microservices (User, Wallet, Transaction, Report, Notification). |
| **AI Service**   | **FastAPI (Python)** | Xử lý Voice (PhoWhisper), OCR (Bedrock), Chatbot (RAG).                    |
| **Database**     | **Polyglot**         | PostgreSQL, MongoDB, Elasticsearch, Qdrant (Vector DB).                    |
| **Messaging**    | **RabbitMQ**         | Giao tiếp bất đồng bộ giữa các service.                                    |

![Ứng dụng quản lý tài chính cá nhân Cloud Architecture](/images/2-Proposal/cloud_architecture.png)

#### Luồng hoạt động trên AWS:

1.  **Truy cập:** Người dùng truy cập qua **Route 53**, được bảo vệ bởi **AWS WAF** và tăng tốc bởi **CloudFront**.
2.  **Xác thực:** **Amazon Cognito** quản lý định danh và cấp phát JWT Token.
3.  **Xử lý API:** Request đi qua **API Gateway**, kết nối an toàn qua **AWS PrivateLink** tới **Application Load Balancer (ALB)**.
4.  **Compute:** ALB phân phối tải tới các container trong **ECS Fargate** (nằm trong Private Subnet).
5.  **DevOps:** Quy trình CI/CD tự động hóa hoàn toàn bằng **GitLab**, build image đẩy lên **Amazon ECR** và update task trên ECS.

### 4. Triển khai kỹ thuật

#### Các giai đoạn triển khai

Dự án kéo dài 4 tháng (bao gồm thực tập):

1.  **Tháng 0 (Pre-internship):** Lên ý tưởng và kế hoạch tổng thể.
2.  **Tháng 1 (Foundation):** Học AWS, nâng cấp kỹ năng .NET/Next.js/AI. Thiết lập VPC, IAM.
3.  **Tháng 2 (Design):** Thiết kế kiến trúc High-level & Detailed trên AWS.
4.  **Tháng 3-4 (Realization):** Coding, Integration Testing, Deploy lên AWS Production, thiết lập Monitoring.
5.  **Sau tháng 5:** Nghiên cứu phát triển Mobile App.

#### Yêu cầu kỹ thuật chi tiết:

- **Frontend:** Triển khai **Next.js 16** trên S3 + CloudFront. Sử dụng **Origin Access Control (OAC)** để bảo mật bucket.
- **Backend:**
  - Sử dụng **.NET Aspire** để quản lý cấu hình Cloud-native.
  - Database-per-service: **PostgreSQL** & **MongoDB**. **Elasticsearch** cho tìm kiếm giao dịch phức tạp.
  - Background Jobs: Sử dụng **Hangfire**.
- **AI Service Pipelines:**
  - _Voice:_ Tiền xử lý bằng Pydub, Model **PhoWhisper-small** (VinAI) cho tiếng Việt.
  - _OCR:_ **Amazon Bedrock** (Claude 3.5 Sonnet Multimodal) để trích xuất thông tin hóa đơn chính xác.
  - _Chatbot (RAG):_ Knowledge Base lưu trong **Qdrant**, sinh câu trả lời qua **Amazon Bedrock** (Claude 3.5 Sonnet).
- **Bảo mật:**
  - Mã hóa dữ liệu đường truyền (HTTPS/TLS 1.2+) và lưu trữ (AES-256).
  - Quản lý bí mật (Secrets) chưa tích hợp sâu (đang ở mức MVP), sẽ nâng cấp lên AWS Secrets Manager trong tương lai.

### 5. Lộ trình & Mốc triển khai (Sprints)

Giai đoạn thực thi chính được chia thành 4 Sprint:

- **Sprint 1: Core Foundation**
  - Xác thực (Cognito), Quản lý Ví (Wallets), Hũ chi tiêu (Spending Jars).
- **Sprint 2: Core Features**
  - Giao dịch (CRUD), Xử lý giọng nói AI (Voice Processing).
- **Sprint 3: Analytics**
  - Báo cáo/Biểu đồ, Hệ thống thông báo (SES), Message Broker.
- **Sprint 4: Stabilization**
  - Kiểm thử tích hợp (Integration Testing), Tinh chỉnh UI, Deploy lên AWS ECS & CloudFront.
- **Testing & Go-live:**
  - Cấu hình Domain, SSL, Monitoring Dashboard, UAT và bảo vệ đồ án.

### 6. Ước tính ngân sách

Dựa trên bảng dự toán chi tiết cho giai đoạn MVP.

Bạn có thể xem chi tiết bảng dự toán chi phí bằng cách tải về các tệp sau:
_📊 <a href="/files/2-Proposal/pricing.csv" download>Tệp định dạng CSV</a>_
_💾 <a href="/files/2-Proposal/pricing.json" download>Tệp định dạng JSON</a>_

| Dịch vụ AWS                | Thành phần / Sử dụng      | Chi Phí (USD/tháng) |
| :------------------------- | :------------------------ | :------------------ |
| **Elastic Load Balancing** | Application Load Balancer | $18.98              |
| **Amazon ECS**             | Fargate (vCPU & Memory)   | $17.30              |
| **Amazon VPC**             | VPC Endpoints & NAT       | $10.49              |
| **AWS WAF**                | Web ACL & Requests        | $7.20               |
| **Amazon API Gateway**     | API Calls & Data Transfer | $2.50               |
| **Amazon CloudFront**      | Data Transfer Out         | $2.00               |
| **Amazon ECR**             | Storage                   | $1.00               |
| **Amazon Route 53**        | Hosted Zones              | $0.54               |
| **Amazon S3**              | Standard Storage          | $0.34               |
| **TỔNG CHI PHÍ AWS**       |                           | **~$60.35**         |

**Chi phí khác:**
| Hạng mục | Chi tiết | Chi Phí (USD/tháng) |
| :--- | :--- | :--- |
| **AI Compute / Tooling** | Gemini API, Amazon Bedrock | ~$15.00 |
| **TỔNG CỘNG DỰ ÁN** | | **~$75.35 / tháng** |

_(Dựa trên giá On-Demand khu vực Singapore - ap-southeast-1)_

### 7. Đánh giá rủi ro

- **Rủi ro chính:** Lộ thông tin người dùng (Impact: High), Mất kết nối AWS Region (Impact: High), AI nhận diện sai (Impact: Medium).
- **Chiến lược giảm thiểu:**
  - _Bảo mật:_ Mã hóa AES-256, HTTPS, IAM Least Privilege, AWS WAF.
  - _High Availability:_ Triển khai Multi-AZ cho ECS và ALB.
  - _AI:_ Cải thiện model liên tục với dữ liệu thực tế.
  - _Resilience:_ Sử dụng RabbitMQ nội bộ để xử lý bất đồng bộ và retry.
- **Kế hoạch dự phòng (Disaster Recovery):** Sử dụng IaC (Infrastructure as Code) để khôi phục nhanh hạ tầng.

### 8. Kết quả kỳ vọng & Đội ngũ

#### Kết quả mong đợi của dự án

- **Nhập liệu tài chính tự động:** Ứng dụng giúp người dùng tránh nhập liệu thủ công, chỉ cần chụp ảnh hóa đơn hoặc ghi âm giọng nói để hệ thống tự động phân loại chi tiêu.
- **Quản lý tài chính trực quan:** Người dùng có thể xem biểu đồ chi tiêu, báo cáo hàng tháng và nhận đề xuất tiết kiệm dựa trên hành vi tiêu dùng.
- **Trải nghiệm người dùng tối thiểu:** Giao diện web thân thiện, thiết kế hiện đại, được tối ưu hóa cho thiết bị di động và phù hợp với người mới bắt đầu quản lý tài chính.
- **Hệ thống ổn định, có khả năng mở rộng:** Kiến trúc microservices giúp dễ dàng thêm các tính năng mới như nhắc nhở chi tiêu, phân tích dự đoán AI hoặc mở rộng sang ứng dụng di động.
- **Nâng cao kỹ năng nhóm phát triển:** Các thành viên dự án có quyền truy cập thực tế vào các quy trình DevOps, triển khai CI/CD và tối ưu hóa ứng dụng trên nền tảng đám mây.

#### Hạn chế của dự án

- **Mô hình AI Việt Nam còn hạn chế:** Khả năng nhận dạng giọng nói vùng miền hoặc hóa đơn viết tay vẫn chưa đạt độ chính xác cao.

- **Không có ứng dụng di động riêng biệt:** Phiên bản MVP chỉ hỗ trợ nền tảng web, không có ứng dụng di động gốc.

#### Đội ngũ thực hiện (Team):

| Họ tên                   | Vai trò                     | Email                     |
| :----------------------- | :-------------------------- | :------------------------ |
| **Lê Vũ Phương Hòa**     | Backend Developer (Leader)  | hoalvpse181951@fpt.edu.vn |
| **Nguyễn Văn Anh Duy**   | AI Developer (Member)       | duynvase181823@fpt.edu.vn |
| **Uông Tuấn Vũ**         | Frontend Developer (Member) | vuutse180241@fpt.edu.vn   |
| **Trần Nguyễn Bảo Minh** | AI Developer (Member)       | baominhbrthcs@gmail.com   |

**Mentor Support:**

- **Nguyễn Gia Hưng** - Head of Solution Architects
- **Văn Hoàng Kha** - Cloud Security Engineer
