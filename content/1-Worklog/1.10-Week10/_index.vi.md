---
title: "Worklog Tuần 10"
date: "2025-11-16"
weight: 1
chapter: false
pre: " <b> 1.10. </b> "
---

### Mục tiêu tuần 10:

- **Wallet Management**: Hoàn thiện tính năng đa ví, hiển thị biểu đồ thống kê tài sản.
- **Jar System Implementation**: Xây dựng backend/frontend cho hệ thống hũ (6 Jars System).
- **Budget Allocation Logic**: Phát triển logic phân bổ ngân sách và validate dữ liệu đầu vào.
- **Transaction Features**: Tạo form thêm giao dịch, danh sách lịch sử và bộ lọc tìm kiếm.
- **AI Service Integration**: Kết nối API AI và triển khai tính năng nhập liệu bằng giọng nói (Voice-to-Transaction).

### Các công việc cần triển khai trong tuần này:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 1 | - **Wallet Management (Finish)**: Hoàn thiện logic tính toán tổng tài sản, xử lý loading state/skeleton và hiển thị biểu đồ phân bổ tài sản (Pie Chart). <br> - **Jar System**: Tạo `components/jars`, xây dựng `fetchJars` service. Thực hiện full CRUD cho hệ thống 6 hũ tài chính. | 10/11/2025 | 10/11/2025 | |
| 2 | - **Budget Allocation**: Xây dựng giao diện Drag & Drop hoặc Slider để phân bổ ngân sách vào hũ. Implement logic validate tổng 100% với Zod schema. | 11/11/2025 | 11/11/2025 | |
| 3 | - **Transaction Creation**: Xây dựng form thêm giao dịch mới (`components/transactions`) phức tạp: chọn ví, chọn hũ, chọn category, ngày tháng và ghi chú. Custom Select component để tối ưu UX. | 12/11/2025 | 12/11/2025 | [date-fns](https://date-fns.org/) |
| 4 | - **Transaction History & Filters**: Hiển thị danh sách lịch sử giao dịch với tính năng Infinite Scroll hoặc Pagination (React Query). Xây dựng bộ lọc nâng cao (theo ngày, theo ví, theo loại). | 13/11/2025 | 13/11/2025 | [TanStack Query](https://tanstack.com/query/latest) |
| 5 | - **Unit Testing**: Viết unit tests coverage cao cho các business logic quan trọng trong `useWallet` và `useJars` hooks sử dụng Jest/Vitest. | 14/11/2025 | 14/11/2025 | |
| 6 | - **AI Service & Voice Input**: Implement `useAIService` kết nối OpenAI/Gemini API. Xây dựng giao diện ghi âm, xử lý chuyển đổi Speech-to-Text và mapping dữ liệu vào form transaction. <br> - Tham gia AWS Cloud Mastery Series #1: GENERATIVE AI, RAG & AWS AGENTIC AI | 15/11/2025 | 15/11/2025 | |

### Kết quả đạt được tuần 10:

- **Wallet Management Complete**: Hoàn thành CRUD ví, hiển thị thông tin số dư và biểu đồ trực quan.
- **Jar System Operational**: Hệ thống 6 hũ (6 Jars) đã hoạt động với đầy đủ chức năng quản lý.
- **Budget Logic Implemented**: Thuật toán phân bổ ngân sách tự động vào các hũ hoạt động chính xác.
- **Transaction Flow**: Tạo mới, xem danh sách và lọc giao dịch đã hoàn thiện.
- **AI Integration Live**: Tính năng nhập liệu bằng giọng nói và gợi ý phân loại giao dịch đã được tích hợp.
