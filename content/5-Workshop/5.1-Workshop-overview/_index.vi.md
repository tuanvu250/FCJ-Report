---
title: "Giới thiệu"
date: "2025-09-09"
weight: 1
chapter: false
pre: " <b> 5.1. </b> "
---

### Giới thiệu tổng quan

Trong bài thực hành này, chúng ta sẽ tập trung xây dựng một trợ lý AI thông minh có khả năng "đọc hiểu" và trả lời câu hỏi dựa trên dữ liệu riêng của doanh nghiệp (kỹ thuật RAG).

Mục tiêu chính là thiết lập một quy trình xử lý dữ liệu hoàn toàn tự động và không máy chủ (Serverless), bao gồm các bước:

1.  **Ingestion (Nhập liệu):** Đưa tài liệu gốc vào hệ thống.
2.  **Indexing (Tạo chỉ mục):** Chuyển đổi văn bản thành vector và lưu trữ để tra cứu.
3.  **Retrieval & Generation (Truy xuất & Tạo sinh):** Cấu hình mô hình AI để tìm kiếm thông tin liên quan và trả lời câu hỏi của người dùng.

> 💡 **Điểm nổi bật:** Giải pháp này giúp bạn **không cần quản lý bất kỳ hạ tầng máy chủ nào**, tối ưu hóa chi phí và thời gian vận hành.

![overview](/images/5-Workshop/5.1-Workshop-overview/overview_diagram.png)

#### Các Bước Thực hiện

1. [Giải thích RAG](5.1.1-WhatIsRag/)
2. [Giới thiệu các dịch vụ](5.1.2-Services/)