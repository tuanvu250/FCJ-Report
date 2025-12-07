---
title: "Worklog Tuần 11"
date: "2025-09-13"
weight: 1
chapter: false
pre: " <b> 1.11. </b> "
---

### Mục tiêu tuần 11:

- Hoàn thiện các tính năng AI: **Bill Scanning**, **Categorization**, **Analytics**.
- Xây dựng **Chatbot** và trang **Quản lý Chatbot**.
- Tối ưu hóa **Mobile-First**.
- **Repository**: [https://gitlab.com/vicobi/vicobi-frontend](https://gitlab.com/vicobi/vicobi-frontend)

### Các công việc cần triển khai trong tuần này:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 1 | - **Bill Scanning (OCR)**: Sử dụng AI API để upload và phân tích ảnh hóa đơn. Trích xuất thông tin: Ngày, Tổng tiền, Tên sản phẩm. <br> - Tham gia AWS Cloud Mastery Series #2: Từ DevOps, IaC đến Container & Observability | 17/11/2025 | 17/11/2025 | |
| 2 | - **AI Categorization & Suggestions**: Xây dựng logic để tự động mapping tên giao dịch sang category tương ứng. Hiển thị UI gợi ý cho người dùng xác nhận hoặc sửa đổi. | 18/11/2025 | 18/11/2025 | |
| 3 | - **Statistics & History**: Xây dựng chức năng hiển thị số liệu thống kê chi tiết (hàng ngày, tuần, tháng, năm) và lịch sử giao dịch tổng hợp cho từng Ví và Hũ. | 19/11/2025 | 19/11/2025 | |
| 4 | - **Chatbot Page**: Xây dựng giao diện chat (`/services/chatbot`) với layout giống ChatGPT. Tích hợp stream response từ API `askChatbot` và hiển thị markdown message. | 20/11/2025 | 20/11/2025 | |
| 5 | - **Chatbot Management**: Xây dựng module quản lý Knowledge Base (`/services/chatbot-management`). Cho phép Admin upload PDF/Docx để training chatbot và xóa file context cũ. | 21/11/2025 | 21/11/2025 | |
| 6 | - **Mobile Optimization**: Tinh chỉnh lại toàn bộ CSS cho thiết bị di động (Mobile-first). Tăng kích thước nút bấm (touch targets), tối ưu layout drawer/modal và kiểm tra hiển thị trên thiết bị thật. | 22/11/2025 | 22/11/2025 | |

### Kết quả đạt được tuần 11:

- **AI & Chatbot**: Hoàn thiện toàn bộ tính năng thông minh và trợ lý ảo.
- **Mobile Ready**: Ứng dụng hoạt động mượt mà trên thiết bị di động.
- **Analytics**: Báo cáo trực quan, giúp người dùng nắm bắt tình hình tài chính.
