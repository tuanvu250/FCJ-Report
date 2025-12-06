---
title: "Các bài blogs đã dịch"
date: "2025-09-09"
weight: 3
chapter: false
pre: " <b> 3. </b> "
---

### [Blog 1 - Chạy và tối ưu các Small Language Models tại on-premises và tại edge](3.1-Blog1/)

Bài viết hướng dẫn cách triển khai Small Language Models (SLMs) vào môi trường AWS on-premises hoặc edge (AWS Local Zones và AWS Outposts) để đáp ứng các yêu cầu về data residency, information security policy, và low latency. Nội dung bao gồm: sự khác biệt giữa LLMs và SLMs, lợi ích của SLMs (thời gian suy luận nhanh hơn, yêu cầu tài nguyên thấp hơn, phù hợp edge computing), kiến trúc triển khai sử dụng Llama.cpp framework, các bước cụ thể để cài đặt và cấu hình (khởi chạy GPU instance, cài đặt NVIDIA drivers, cài đặt Llama.cpp, tải và chuyển đổi model sang định dạng GGUF), và các ví dụ tối ưu hóa cho chatbot và text summarization.

### [Blog 2 - Hội nghị AWS EUC New York Summit: The AI Advantage: Unlocking the full potential of your EUC Services](3.2-Blog2/)

Bài viết giới thiệu về phiên thảo luận tại AWS EUC New York Summit, tập trung vào cách ứng dụng AI để tối ưu các tác vụ quản trị End-User Computing (EUC) và nâng cao năng suất người dùng. Nội dung chính: tận dụng AI agentic của Amazon Bedrock kết hợp với Amazon WorkSpaces và Amazon CloudWatch để tự động hóa các tác vụ quản trị, cung cấp thông tin chi tiết có thể hành động (actionable insights) từ metrics và logs quan trọng, thu thập dữ liệu về user connectivity, platforms và IP addresses, phân tích dữ liệu để tối ưu hoạt động người dùng cuối. Phiên builders session cung cấp kiến thức chuyên sâu và trải nghiệm học tập thực tế về cách tích hợp AI vào framework EUC hiện có.

### [Blog 3 - Cách thiết lập cảnh báo tự động cho các AWS Savings Plans mới mua](3.3-Blog3/)

Bài viết hướng dẫn cách thiết lập hệ thống giám sát và cảnh báo tự động để phát hiện AWS Savings Plans sử dụng kém hiệu quả trong thời hạn hoàn trả hợp lệ (7 ngày đầu và trong cùng tháng mua). Nội dung bao gồm: giải thích về AWS Savings Plans và chính sách hoàn trả (cam kết ≤ $100/giờ), kiến trúc giải pháp sử dụng AWS CloudFormation, Step Functions, SNS, EventBridge và IAM roles, triển khai trên hai tài khoản (Management Account và Member Account) theo AWS security best practices, quy trình tự động phân tích tỷ lệ sử dụng Savings Plans và gửi cảnh báo qua email khi phát hiện plan sử dụng thấp dưới ngưỡng định sẵn, hướng dẫn triển khai chi tiết từng bước và cách kiểm thử giải pháp.
