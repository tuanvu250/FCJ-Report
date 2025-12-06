---
title: "Event 4"
date: "2025-11-15"
weight: 1
chapter: false
pre: " <b> 4.4. </b> "
---

# Bài thu hoạch “AWS Cloud Mastery Series #1: GENERATIVE AI, RAG & AWS AGENTIC AI”

### Mục Đích Của Sự Kiện

- Làm chủ kỹ thuật **Prompt Engineering** để tối ưu hóa tương tác và điều khiển các mô hình ngôn ngữ lớn (LLMs).
- Tổng hợp các dịch vụ AI tích hợp sẵn (Pre-trained Services) mạnh mẽ trên hệ sinh thái AWS.
- Đi sâu vào kiến trúc **RAG (Retrieval-Augmented Generation)** - giải pháp cốt lõi cung cấp kiến thức riêng biệt cho AI.
- Cập nhật xu hướng **Agentic AI** và giải pháp **Amazon Bedrock AgentCore** giúp thu hẹp khoảng cách từ bản thử nghiệm (POC) đến môi trường thực tế (Production).
- Tiếp cận **Pipecat Framework** trong việc xây dựng các trợ lý ảo tương tác bằng giọng nói thời gian thực.

### Danh Sách Diễn Giả

- **Lâm Tuấn Kiệt** - Sr DevOps Engineer (FPT Software)
- **Danh Hoàng Hiếu Nghị** - AI Engineer (Renova Cloud)
- **Đinh Lê Hoàng Anh** - Cloud Engineer Trainee (First Cloud AI Journey)

### Nội Dung Nổi Bật

#### **1. Prompt Engineering & Foundation Models**

Mở đầu chương trình là những chia sẻ nền tảng về cách giao tiếp hiệu quả với Generative AI:
- **Zero-shot / Few-shot Prompting:** Các chiến lược gợi ý ngữ cảnh để mô hình trả ra kết quả mong muốn ngay từ lần đầu hoặc qua vài ví dụ mẫu.
- **Chain of Thought (CoT):** Kỹ thuật "chia nhỏ vấn đề", yêu cầu mô hình suy luận từng bước (step-by-step) để giải quyết các bài toán logic phức tạp.

#### **2. Hệ Sinh Thái Dịch Vụ AI AWS**

AWS cung cấp bộ công cụ toàn diện giúp tích hợp trí tuệ nhân tạo mà không cần build model từ đầu:
- **Xử lý hình ảnh:** Amazon Rekognition.
- **Xử lý ngôn ngữ:** Amazon Translate, Comprehend, Textract (trích xuất văn bản thông minh).
- **Xử lý âm thanh:** Amazon Polly (chuyển văn bản thành giọng nói), Transcribe (chuyển giọng nói thành văn bản).

#### **3. Chiến Lược RAG (Retrieval Augmented Generation)**

RAG được giới thiệu như giải pháp tối ưu cho hạn chế về cập nhật dữ liệu của LLM:
- **Cơ chế:** Kết hợp khả năng sinh ngữ của LLM với khả năng tìm kiếm chính xác từ kho dữ liệu doanh nghiệp.
- **Công cụ:** Sử dụng _Amazon Titan Text Embeddings V2_ để vector hóa dữ liệu và **Knowledge Bases for Amazon Bedrock** để quản lý quy trình truy vấn một cách tự động.

#### **4. Kỷ Nguyên Của Agentic AI**

Sự tiến hóa của AI được phân cấp rõ rệt:
1.  **GenAI Assistants:** Trợ lý ảo thực thi mệnh lệnh đơn lẻ.
2.  **GenAI Agents:** Tác nhân AI hướng mục tiêu, biết sử dụng công cụ (Tools) để hoàn thành nhiệm vụ.
3.  **Agentic AI Systems:** Hệ thống các Agents tự chủ phối hợp (Multi-agent orchestration).

**Thách thức "Prototype to Production":**
Việc đưa Agent ra thị trường gặp rào cản lớn về Bảo mật (Security), Quản trị (Governance) và khả năng mở rộng (Scalability).

#### **5. Giải Pháp Amazon Bedrock AgentCore**

Nền tảng giúp đơn giản hóa việc xây dựng và vận hành Agent:
- **Memory:** Tự động duy trì ngữ cảnh hội thoại dài hạn.
- **Action Group:** Định nghĩa các hành động mà Agent có thể thực hiện thông qua API.
- **Code Interpreter:** Môi trường Sandbox an toàn để Agent tự viết và chạy code.
- **Traceability:** Khả năng truy vết quá trình suy luận của Agent để debug và tối ưu.

#### **6. Pipecat - Real-time Voice AI**

Demo ấn tượng về Framework mã nguồn mở giúp xây dựng các ứng dụng hội thoại tự nhiên:
- **Ưu điểm:** Độ trễ thấp (Low latency), hỗ trợ đa phương thức (Multimodal).
- **Luồng xử lý:** Kết hợp WebRTC, STT, LLM và TTS thành một pipeline mượt mà.

### Trải nghiệm chi tiết trong Event

Buổi workshop đã mở ra cho tôi nhiều góc nhìn mới mẻ:

#### 1. Sự Dịch Chuyển Từ "Chat" Sang "Act"
Tôi nhận thấy tương lai không chỉ dừng lại ở các Chatbot trả lời câu hỏi, mà là các **Autonomous Agents** có khả năng thực thi công việc thực tế (đặt lịch, tra cứu, xử lý số liệu) một cách độc lập.

#### 2. Tầm Quan Trọng Của Hệ Thống
Để AI hoạt động hiệu quả trong doanh nghiệp, thuật toán (Model) chỉ là một phần. Các yếu tố về **Hạ tầng, Bảo mật và Quản trị** (được cung cấp bởi Bedrock AgentCore) mới là nền tảng quyết định thành bại của dự án.

#### 3. Tiềm Năng Của Giao Diện Giọng Nói
Công nghệ như **Pipecat** đang xóa nhòa ranh giới giao tiếp giữa người và máy, hứa hẹn sự bùng nổ của các ứng dụng trợ lý ảo tổng đài hay giáo dục trong tương lai gần.

### Tổng Kết

Chuỗi chuyên đề **"Generative AI & Agentic AI"** là bước đệm vững chắc kiến thức:
- **Hiện tại:** Nắm vững Prompt Engineering và RAG.
- **Tương lai:** Hướng tới xây dựng các hệ thống Agentic AI thông minh.
- **Công cụ:** Tận dụng tối đa sức mạnh của AWS Cloud để hiện thực hóa ý tưởng.

#### Một số hình ảnh khi tham gia sự kiện

<!-- ![](/images/4-EventParticipated/event4-3-1.png) -->
