---
title: "Worklog Tuần 9"
date: "2025-09-14"
weight: 1
chapter: false
pre: " <b> 1.9. </b> "
---

### Mục tiêu tuần 9:

- **Project Initialization**: Khởi tạo dự án Next.js 16, React 19, TypeScript và cấu hình ESLint, Husky.
- **Design System Setup**: Thiết lập hệ thống thiết kế Neobrutalism, cài đặt Tailwind CSS và Shadcn UI.
- **Authentication Flow**: Tích hợp AWS Cognito, xây dựng trang Login/Register với Zod validation.
- **Dashboard Development**: Xây dựng layout responsive cho User/Admin và các thành phần giao diện chính.
- **State Management & API**: Cấu hình Axios client, Redux/Zustand store và tích hợp React Query.
- **Repository**: [https://gitlab.com/vicobi/vicobi-frontend](https://gitlab.com/vicobi/vicobi-frontend)

### Các công việc cần triển khai trong tuần này:

| Ngày | Công việc | Ngày bắt đầu | Ngày hoàn thành | Nguồn tài liệu |
| --- | --- | --- | --- | --- |
| 1 | - **Project Setup**: Khởi tạo dự án với Next.js 16.0.1 (App Router), React 19 và TypeScript. <br> - **Dev Tools**: Cấu hình quy trình Git hook với Husky, kiểm soát commit message với Commitlint và thiết lập ESLint/Prettier chuẩn. | 03/11/2025 | 03/11/2025 | [Next.js 16](https://nextjs.org/), [Husky](https://typicode.github.io/husky/) |
| 2 | - **Design System Setup**: Cài đặt Tailwind CSS và cấu hình Design Tokens cho phong cách Neobrutalism (đậm nét, shadow cứng). Tùy biến Shadcn UI components và cài thêm Framer Motion cho animation. | 04/11/2025 | 04/11/2025 | [Framer Motion](https://www.framer.com/motion/) |
| 3 | - **Authentication Flow**: Tích hợp AWS Cognito Identity Provider. Xây dựng form Login/Register/Forgot Password sử dụng React Hook Form kết hợp Zod validation. Kết nối `authService`. | 05/11/2025 | 05/11/2025 | [AWS Cognito](https://aws.amazon.com/cognito/) |
| 4 | - **Dashboard Layout**: Xây dựng Layout riêng biệt cho Group Route `(member)` và `(admin)`. Implement Sidebar navigation responsive hoàn chỉnh và Widget hệ thống style Neobrutalist. | 06/11/2025 | 06/11/2025 | |
| 5 | - **API Client & Store**: Thiết lập Axios Interceptor (`lib/api/core.ts`) để tự động gắn Token và refresh token. Cấu hình Global State với Zustand (`authStore`) và tích hợp React Query (`apiStore`). | 07/11/2025 | 07/11/2025 | [Zustand](https://zustand-demo.pmnd.rs/) |
| 6 | - **Wallet Management Start**: Phân tích API swagger, implement `fetchWallet` service và custom hook `useWallet`. Xây dựng UI danh sách ví và modal tạo ví mới. <br> - **Weekly Review**: Review lại cấu trúc thư mục và convention code. | 08/11/2025 | 08/11/2025 | |

### Kết quả đạt được tuần 9:

- **Development Environment**: Khởi tạo thành công dự án Next.js 16/React 19, cấu hình ESLint/Prettier chuẩn chỉ.
- **Neobrutalism Design System**: Hệ thống UI components, typography và màu sắc đã được thiết lập đồng bộ.
- **Authentication System**: Hoàn thiện luồng đăng ký/đăng nhập với AWS Cognito và form validation chặt chẽ.
- **Dashboard UI**: Giao diện Dashboard responsive cho Admin và User đã hoạt động.
- **Foundation Layer**: Cấu hình xong API Client (Axios) và State Management (Zustand/TanStack Query).
