---
title: "Event 3"
date: "2025-10-16"
weight: 1
chapter: false
pre: " <b> 4.3. </b> "
---

# Bài thu hoạch “WORKSHOP KHOA HỌC DỮ LIỆU TRÊN AWS”

### Mục Đích Của Sự Kiện

- Chia sẻ tổng quan về hệ sinh thái các dịch vụ AI/ML trên AWS.
- Hướng dẫn thực hành triển khai mô hình AI sử dụng Amazon SageMaker.
- Minh họa quy trình đưa một mô hình AI từ phòng thí nghiệm ra ứng dụng thực tế thông qua API.

### Danh Sách Diễn Giả

- **Văn Hoàng Kha** - Cloud Solutions Architect, Leader AWS User Group.
- **Bạch Doãn Vương** - Cloud Developer Engineer, AWS Community Builder.

### Nội Dung Nổi Bật

#### **1. Tầm Quan Trọng Của Cloud Computing Trong Data Science**

- Mở đầu bằng sự khẳng định vai trò trụ cột của điện toán đám mây đối với ngành khoa học dữ liệu hiện đại, đặc biệt là trong khả năng xử lý và lưu trữ dữ liệu lớn.
- **So sánh Cloud vs On-premise:**
  - **Cloud:** Ưu điểm vượt trội về khả năng mở rộng (Scalability), tốc độ triển khai (Agility) và mô hình chi phí linh hoạt (OPEX).
  - **On-premise:** Hạn chế về chi phí đầu tư hạ tầng (CAPEX), khó khăn trong việc mở rộng tài nguyên tức thời cũng như gánh nặng bảo trì.
- **AWS** cung cấp một nền tảng "End-to-End" cho Data Science pipeline: từ thu thập, lưu trữ, xử lý dữ liệu cho đến huấn luyện và vận hành mô hình.

#### **2. Ba Tầng Dịch Vụ (3-Layer Stack) Của AWS AI**

AWS thiết kế hệ sinh thái AI theo 3 tầng riêng biệt để phục vụ đa dạng nhu cầu:

**Tầng 1: AI Services (Dịch vụ AI Quản Lý Sẵn)**
> _Phù hợp cho: App Developers không chuyên về ML._

- Là các API thông minh đã được AWS huấn luyện sẵn.
- Tích hợp nhanh chóng vào ứng dụng để có ngay tính năng AI.
- **Dịch vụ nổi bật:**
  - **Amazon Comprehend:** Phân tích văn bản, cảm xúc.
  - **Amazon Translate:** Dịch thuật tự động.
  - **Amazon Textract:** Nhận diện và trích xuất dữ liệu từ văn bản/ảnh.
  - **Amazon Rekognition:** Phân tích hình ảnh, video.
  - **Amazon Bedrock:** Cổng kết nối đến các mô hình nền tảng (Foundation Models) mạnh mẽ.

**Tầng 2: ML Services (Amazon SageMaker)**
> _Phù hợp cho: Data Scientists & ML Engineers._

- Môi trường phát triển toàn diện (IDE) cho Machine Learning.
- Cung cấp công cụ cho mọi bước:
  - **Data Wrangler:** Chuẩn bị dữ liệu.
  - **Feature Store:** Kho lưu trữ đặc trưng.
  - **SageMaker Autopilot:** Huấn luyện tự động (AutoML).
  - **Model Registry:** Quản lý vòng đời mô hình.

**Tầng 3: AI Infrastructure (Hạ tầng ML)**
> _Phù hợp cho: Expert Practitioners cần tối ưu sâu._

- Cung cấp các tài nguyên tính toán mạnh mẽ nhất:
  - **EC2 Instances (P5, G6, Trn1...):** Các chipset chuyên dụng cho training/inference.
  - **EKS/ECS:** Chạy workload AI trên nền tảng container.

#### **3. Các Công Cụ Hỗ Trợ Đắc Lực Cho Sinh Viên**

1.  **Amazon SageMaker:** Nơi tốt nhất để bắt đầu học và thực hành quy trình ML chuẩn công nghiệp.
2.  **Amazon Comprehend:** Công cụ mạnh mẽ cho các bài toán NLP như phân tích review, phân loại văn bản.
3.  **Amazon Translate:** Hỗ trợ xây dựng ứng dụng đa ngôn ngữ với chi phí thấp.
4.  **Amazon Textract:** Giải pháp hiệu quả cho các bài toán số hóa dữ liệu từ giấy tờ.

#### **4. Demo & Thực Hành**

- **Demo 1: No-code ML với SageMaker Canvas**
  - Diễn giả trình diễn cách tạo ra một mô hình dự đoán mà không cần viết bất kỳ dòng code nào nhờ giao diện kéo-thả trực quan.
  - **Bài học:** Giúp dân không chuyên (Business Analyst) cũng có thể ứng dụng AI.

- **Demo 2: Deploy Model thành API Service**
  - Quy trình đưa model đã train lên SageMaker Endpoint và expose ra ngoài qua API Gateway.
  - **Bài học:** Hiểu rõ quy trình "Productionize" một mô hình AI để người dùng cuối có thể sử dụng.

### Trải nghiệm trong event

Buổi workshop thực sự là một trải nghiệm bổ ích, giúp tôi hệ thống hóa lại kiến thức về AI/ML trên nền tảng Cloud.

- **Tư duy hệ thống:** Hiểu rõ 3 tầng dịch vụ giúp tôi biết cách chọn đúng công cụ cho đúng bài toán, tránh việc "dùng dao mổ trâu để giết gà".
- **Góc nhìn thực tế:** Những bài demo trực quan đã giúp tôi hình dung rõ ràng con đường từ một file notebook đến một API service hoạt động thực tế.
- **Động lực:** Thấy được sự hỗ trợ mạnh mẽ của AWS dành cho cộng đồng và sinh viên thông qua các chương trình Free Tier và tài liệu học tập.

#### Một số hình ảnh khi tham gia sự kiện

![](/images/4-EventParticipated/event4-3-1.png)
