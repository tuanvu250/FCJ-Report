# Vicobi Frontend

Ứng dụng Next.js hiện đại cho quản lý tài chính cá nhân với xử lý giao dịch bằng AI, ngân sách dựa trên hũ (jar), và quản lý ví toàn diện.

## Mục Lục

- [Tính Năng](#tính-năng)
- [Công Nghệ](#công-nghệ)
- [Yêu Cầu](#yêu-cầu)
- [Cài Đặt](#cài-đặt)
- [Cấu Hình](#cấu-hình)
- [Cấu Trúc Dự Án](#cấu-trúc-dự-án)
- [Scripts Khả Dụng](#scripts-khả-dụng)
- [Quy Trình Phát Triển](#quy-trình-phát-triển)
- [Tích Hợp API](#tích-hợp-api)
- [Hệ Thống Thiết Kế](#hệ-thống-thiết-kế)
- [Triển Khai](#triển-khai)
- [Đóng Góp](#đóng-góp)

## Tính Năng

### 🔐 Xác Thực & Quản Lý Người Dùng

- Tích hợp AWS Cognito cho xác thực bảo mật
- Đăng ký đa bước với xác minh OTP
- Luồng đặt lại và khôi phục mật khẩu
- Tạo và quản lý hồ sơ
- Cài đặt tài khoản với kiểm soát bảo mật

### 💰 Quản Lý Tiền

- **Hệ Thống Hũ**: Ngân sách theo danh mục với các hũ tùy chỉnh
- **Quản Lý Ví**: Hỗ trợ đa ví với theo dõi giao dịch
- **Lịch Sử Giao Dịch**: Nhật ký giao dịch toàn diện với lọc và tìm kiếm
- **Phân Tích Trực Quan**: Biểu đồ và đồ thị cho thông tin chi tiêu
- **Quét Hóa Đơn**: Nhận diện và xử lý hóa đơn bằng OCR

### 🤖 Tính Năng AI

- Nhập giao dịch bằng giọng nói chuyển văn bản
- Phân loại giao dịch hỗ trợ bởi AI
- Đề xuất phân bổ hũ tự động
- Phân tích giao dịch thông minh từ biên lai
- Xử lý giao dịch bằng ngôn ngữ tự nhiên

### 🎨 Giao Diện Người Dùng

- Thiết kế Neobrutalist với viền đậm và màu sắc rực rỡ
- Bố cục responsive hoàn toàn cho mobile và desktop
- Hiệu ứng mượt mà với Framer Motion
- Thành phần accessible xây dựng với Radix UI

## Công Nghệ

### Framework Cốt Lõi

- **Next.js 16.0.1** - React framework với App Router
- **React 19.2.0** - Thư viện UI
- **TypeScript 5.x** - An toàn kiểu dữ liệu

### Xác Thực

- **AWS Cognito** - Xác thực và ủy quyền người dùng
- **Amazon Cognito Identity JS** - Cognito SDK

### Quản Lý State

- **Zustand 5.0.8** - Quản lý state nhẹ
- **Redux Toolkit 2.10.1** - Quản lý state phức tạp
- **React Query (TanStack Query) 5.90.8** - Quản lý state server

### UI Components & Styling

- **Tailwind CSS 3.4.18** - CSS framework utility-first
- **shadcn/ui** - Thư viện component tái sử dụng
- **Radix UI** - Component primitives accessible
- **Framer Motion 12.23.24** - Thư viện animation
- **Lucide React** - Thư viện icon

### Forms & Validation

- **React Hook Form 7.66.0** - Quản lý form
- **Zod 4.1.12** - Validation schema
- **@hookform/resolvers** - Resolvers validation form

### Tiện Ích

- **Axios 1.13.2** - HTTP client
- **date-fns 4.1.0** - Xử lý ngày tháng
- **class-variance-authority** - Component variants
- **clsx** - Conditional classnames

### Công Cụ Phát Triển

- **ESLint** - Code linting
- **Prettier** - Code formatting
- **Husky** - Git hooks
- **Commitlint** - Commit message linting
- **lint-staged** - Chạy linters trên staged files

## Yêu Cầu

- **Node.js**: Phiên bản 24.10.1 trở lên
- **npm/yarn/pnpm**: Trình quản lý package
- **AWS Account**: Để cài đặt xác thực Cognito
- **Backend API**: Truy cập vào dịch vụ backend Vicobi

## Cài Đặt

### Phương Pháp 1: Cài Đặt Thông Thường

1. **Clone repository**

   ```bash
   git clone https://gitlab.com/vicobi/vicobi-frontend.git
   cd vicobi-frontend
   ```

2. **Cài đặt dependencies**

   ```bash
   npm install
   ```

3. **Thiết lập biến môi trường**

   Tạo file `.env.local` trong thư mục root:

   ```env
   # Cấu hình AWS Cognito
   NEXT_PUBLIC_AWS_REGION=your-aws-region
   NEXT_PUBLIC_COGNITO_USER_POOL_ID=your-user-pool-id
   NEXT_PUBLIC_COGNITO_CLIENT_ID=your-client-id
   NEXT_PUBLIC_COGNITO_IDENTITY_POOL_ID=your-identity-pool-id

   # API Endpoints
   NEXT_PUBLIC_API_BASE_URL=https://api.vicobi.com
   NEXT_PUBLIC_AI_SERVICE_URL=https://ai-api.vicobi.com

   # Cài đặt ứng dụng
   NEXT_PUBLIC_APP_ENV=development
   ```

4. **Khởi tạo Husky (cho Git hooks)**
   ```bash
   npm run prepare
   ```

### Phương Pháp 2: Sử Dụng Docker 🐳

Docker là cách nhanh nhất để chạy ứng dụng mà không cần cài đặt Node.js hay dependencies!

1. **Cài đặt môi trường**

   ```bash
   cp .env.example .env
   # Chỉnh sửa file .env với cấu hình của bạn
   ```

2. **Khởi động ứng dụng**

   ```bash
   # Sử dụng script nhanh (Windows)
   .\docker-quick-start.ps1 start

   # Hoặc dùng docker-compose trực tiếp
   docker-compose up -d
   ```

3. **Truy cập ứng dụng**

   Mở trình duyệt: `http://localhost:3000`

Xem [DOCKER.md](./DOCKER.md) để biết hướng dẫn chi tiết về Docker setup, cấu hình, và deployment.

## Cấu Hình

### Thiết Lập AWS Cognito

1. Tạo User Pool trong AWS Cognito
2. Cấu hình cài đặt app client
3. Thiết lập các thuộc tính bắt buộc (email, phone_number, v.v.)
4. Cấu hình MFA và chính sách mật khẩu
5. Cập nhật `.env.local` với thông tin Cognito của bạn

### Cấu Hình API

Ứng dụng kết nối đến hai dịch vụ chính:

- **Backend API**: REST API chính cho business logic
- **AI Service**: Tính năng và xử lý bằng AI

Cập nhật các URL API trong `.env.local` để phù hợp với môi trường của bạn.

## Cấu Trúc Dự Án

```
vicobi-frontend/
├── app/                          # Next.js App Router
│   ├── (admin)/                  # Routes admin (được bảo vệ)
│   ├── (user)/                   # Routes user (được bảo vệ)
│   │   ├── page.tsx             # Dashboard người dùng
│   │   ├── (public)/            # Trang public
│   │   └── services/            # Dịch vụ người dùng
│   ├── auth/                    # Routes xác thực
│   │   ├── login/
│   │   ├── register/
│   │   ├── verify-otp/
│   │   ├── forgot-password/
│   │   └── reset-password/
│   ├── layout.tsx               # Layout gốc
│   └── globals.css              # Styles toàn cục
│
├── components/                   # React components
│   ├── ui/                      # UI components tái sử dụng (shadcn/ui)
│   │   ├── button.tsx
│   │   ├── input.tsx
│   │   ├── dialog.tsx
│   │   └── ...
│   ├── auth/                    # Components xác thực
│   ├── jars/                    # Components quản lý hũ
│   ├── wallet/                  # Components ví
│   ├── transactions/            # Components giao dịch
│   ├── transaction-ai/          # Xử lý giao dịch AI
│   ├── modal/                   # Modal dialogs
│   ├── sidebar/                 # Sidebar navigation
│   └── landing/                 # Components landing page
│
├── hooks/                       # Custom React hooks
│   ├── useAuth.tsx              # Hook xác thực
│   ├── useWallet.tsx            # Hook quản lý ví
│   ├── useJars.tsx              # Hook quản lý hũ
│   ├── useTransactions.tsx      # Hook giao dịch
│   └── useAIService.tsx         # Hook dịch vụ AI
│
├── lib/                         # Thư viện tiện ích
│   ├── api/                     # Tích hợp API
│   │   ├── core.ts             # API service class
│   │   └── services/           # Service endpoints
│   │       ├── authService.ts
│   │       ├── fetchWallet.ts
│   │       ├── fetchJars.ts
│   │       ├── fetchTransaction.ts
│   │       └── fetchAIService.ts
│   ├── store/                   # Quản lý state
│   │   ├── authStore.ts        # Auth state (Zustand)
│   │   └── apiStore.ts         # API state
│   ├── providers/               # Context providers
│   └── utils/                   # Utility functions
│
├── utils/                       # Helper utilities
│   ├── const/                   # Hằng số
│   ├── date/                    # Tiện ích ngày tháng
│   ├── email/                   # Tiện ích email
│   └── numbers/                 # Định dạng số
│
├── public/                      # Static assets
├── docs/                        # Tài liệu
│
├── next.config.mjs              # Cấu hình Next.js
├── tailwind.config.ts           # Cấu hình Tailwind CSS
├── tsconfig.json                # Cấu hình TypeScript
├── components.json              # Cấu hình shadcn/ui
├── commitlint.config.js         # Cấu hình Commitlint
└── package.json                 # Dependencies và scripts
```

## Scripts Khả Dụng

```bash
# Phát triển
npm run dev              # Khởi động server phát triển (localhost:3000)
npm run build            # Build cho production
npm run start            # Khởi động server production

# Chất lượng Code
npm run lint             # Chạy ESLint
npm run lint:fix         # Tự động sửa lỗi ESLint
npm run type-check       # Chạy kiểm tra kiểu TypeScript
npm run format           # Format code với Prettier

# Git Hooks
npm run prepare          # Khởi tạo Husky hooks
```

### Development Server

Server phát triển chạy trên `http://localhost:3000` với:

- Hot Module Replacement (HMR)
- Fast Refresh
- React Query DevTools
- Kiểm tra lỗi TypeScript

## Quy Trình Phát Triển

### Git Workflow

Dự án này sử dụng **Husky** cho Git hooks và **Commitlint** cho conventional commits.

#### Pre-commit Hook

Tự động chạy khi `git commit`:

- Kiểm tra ESLint và tự động sửa trên staged files
- Format với Prettier
- Kiểm tra kiểu TypeScript

#### Format Commit Message

Tuân theo [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>: <description>

Ví dụ:
feat: thêm nhập giao dịch bằng giọng nói
fix: sửa lỗi CORS trong wallet API
docs: cập nhật hướng dẫn cài đặt
chore: cấu hình husky và eslint
refactor: tái cấu trúc auth store
style: format components với prettier
perf: tối ưu hiệu suất render biểu đồ
test: thêm unit tests cho login form
```

**Các type được chấp nhận:**

- `feat` - Tính năng mới
- `fix` - Sửa bug
- `docs` - Thay đổi tài liệu
- `style` - Format code (không ảnh hưởng logic)
- `refactor` - Tái cấu trúc code
- `perf` - Cải thiện hiệu suất
- `test` - Thêm tests
- `chore` - Các thay đổi khác (config, dependencies)

### Code Style

- **ESLint**: Áp dụng quy tắc chất lượng code
- **Prettier**: Xử lý format code
- **TypeScript**: Bật chế độ strict
- **Tailwind CSS**: Phương pháp utility-first với theme tùy chỉnh

## Tích Hợp API

### API Services

Ứng dụng sử dụng class `ApiService` tùy chỉnh cho HTTP requests:

```typescript
// lib/api/core.ts
import { ApiService } from '@/lib/api/core'

const api = new ApiService(baseURL, timeout, onAuthError)
api.setAuthToken(token)
```

### Service Modules

- **authService**: Đăng nhập, đăng ký, xác minh OTP
- **fetchWallet**: Các thao tác CRUD ví
- **fetchJars**: Quản lý hũ và ngân sách
- **fetchTransaction**: Lịch sử và chi tiết giao dịch
- **fetchAIService**: Xử lý giao dịch bằng AI
- **fetchUsers**: Hồ sơ và cài đặt người dùng
- **fetchNotification**: Quản lý thông báo

### Custom Hooks

React Query hooks cho việc fetch dữ liệu:

```typescript
// Ví dụ sử dụng
import { useWallet } from '@/hooks/useWallet'

const { data, isLoading, error } = useWallet()
```

## Hệ Thống Thiết Kế

### Theme

Ứng dụng sử dụng hệ thống thiết kế **Neobrutalist** với:

- Viền đen đậm (3-4px)
- Bảng màu rực rỡ
- Bóng đổ mạnh
- Độ tương phản cao
- Hình dạng hình học

### Color Tokens

Được định nghĩa trong `globals.css` sử dụng CSS variables:

```css
--background: 0 0% 100% --foreground: 0 0% 3.9% --primary: 0 0% 9%
  --secondary: 0 0% 96.1% --accent: 0 0% 96.1% --destructive: 0 84.2% 60.2%;
```

### Component Library

**shadcn/ui** components với tùy chỉnh:

- Button variants (default, destructive, outline, ghost)
- Form components với validation
- Dialog và modal patterns
- Data tables với sắp xếp và lọc
- Biểu đồ và trực quan hóa

### Responsive Design

- Phương pháp mobile-first
- Breakpoints: `sm`, `md`, `lg`, `xl`, `2xl`
- Custom hook `use-mobile` cho logic responsive

## Triển Khai

### Static Export

Ứng dụng được cấu hình cho static export:

```javascript
// next.config.mjs
const nextConfig = {
  output: 'export',
  trailingSlash: true,
  images: {
    unoptimized: true,
  },
}
```

### Quy Trình Build

```bash
npm run build
```

Lệnh này tạo thư mục `out/` chứa các file tĩnh sẵn sàng để triển khai.

### Tùy Chọn Triển Khai

- **AWS S3 + CloudFront**: Static hosting với CDN
- **Vercel**: Triển khai một cú nhấp chuột cho Next.js
- **Netlify**: Triển khai tự động từ Git
- **GitHub Pages**: Static hosting miễn phí

### Biến Môi Trường

Đảm bảo tất cả biến môi trường `NEXT_PUBLIC_*` được thiết lập trong nền tảng triển khai của bạn.

## Đóng Góp

### Bắt Đầu

1. Fork repository
2. Tạo branch tính năng: `git checkout -b feat/your-feature`
3. Thực hiện thay đổi tuân theo hướng dẫn code style
4. Commit sử dụng conventional commits: `git commit -m "feat: thêm tính năng mới"`
5. Push lên fork của bạn: `git push origin feat/your-feature`
6. Mở merge request

### Hướng Dẫn Pull Request

- Tuân theo cấu trúc và patterns code hiện có
- Thêm/cập nhật tests nếu có thể
- Cập nhật tài liệu khi cần thiết
- Đảm bảo tất cả checks pass (lint, type-check)
- Cung cấp mô tả rõ ràng về các thay đổi
- Tham chiếu đến các issues liên quan

### Quy Trình Code Review

Tất cả merge requests yêu cầu:

- Pass CI/CD checks
- Approval từ code review
- Không có merge conflicts
- Tài liệu được cập nhật

---

**Được xây dựng với ❤️ bởi Vicobi Team**

## Project status

If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
