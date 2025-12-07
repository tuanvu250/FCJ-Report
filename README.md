# FCJ Internship Report

Báo cáo thực tập tại Amazon Web Services Vietnam - FCJ Cloud Intern Program. Dự án sử dụng Hugo static site generator với theme hugo-theme-learn để tạo tài liệu trực tuyến chuyên nghiệp.

## Mục Lục

- [Giới Thiệu](#giới-thiệu)
- [Công Nghệ](#công-nghệ)
- [Yêu Cầu](#yêu-cầu)
- [Cài Đặt](#cài-đặt)
- [Cấu Trúc Dự Án](#cấu-trúc-dự-án)
- [Sử Dụng](#sử-dụng)
- [Triển Khai](#triển-khai)
- [Nội Dung Báo Cáo](#nội-dung-báo-cáo)

## Giới Thiệu

Website báo cáo thực tập FCJ (First Cloud Journey) cho chương trình thực tập tại Amazon Web Services Vietnam. Trang web được xây dựng bằng Hugo framework và triển khai trên GitHub Pages, cung cấp giao diện song ngữ (Tiếng Anh và Tiếng Việt).

### Thông Tin Sinh Viên

- **Họ và Tên:** Uông Tuấn Vũ
- **Email:** vuutse180241@fpt.edu.vn
- **Trường:** FPT University Campus TP.HCM
- **Chuyên ngành:** Software Engineering
- **Lớp:** SE180241
- **Công ty thực tập:** Amazon Web Services Vietnam Co., Ltd.
- **Vị trí:** FCJ Cloud Intern
- **Thời gian:** 08/09/2025 - 12/12/2025

## Công Nghệ

### Framework & Tools

- **Hugo** - Static site generator mạnh mẽ và nhanh chóng
- **hugo-theme-learn** - Theme chuyên dụng cho documentation
- **GitHub Pages** - Hosting tĩnh miễn phí
- **Git** - Version control

### Tính Năng

- ✅ Hỗ trợ đa ngôn ngữ (English/Tiếng Việt)
- ✅ Navigation sidebar tự động
- ✅ Tìm kiếm toàn văn (search functionality)
- ✅ Responsive design cho mobile và desktop
- ✅ Syntax highlighting cho code blocks
- ✅ Breadcrumb navigation
- ✅ Dark/Light theme variants

## Yêu Cầu

- **Hugo Extended**: Phiên bản mới nhất (khuyến nghị v0.110.0+)
- **Git**: Để quản lý version control và deployment
- **Text Editor**: VS Code, Sublime Text, hoặc editor tương tự

### Cài Đặt Hugo

**Windows:**
```powershell
# Sử dụng Chocolatey
choco install hugo-extended -y

# Hoặc sử dụng Scoop
scoop install hugo-extended
```

**macOS:**
```bash
brew install hugo
```

**Linux:**
```bash
snap install hugo
```

## Cài Đặt

### 1. Clone Repository

```bash
git clone https://github.com/tuanvu250/FCJ-Report.git
cd FCJ-Report
```

### 2. Cài Đặt Theme

Theme `hugo-theme-learn` đã được bao gồm trong thư mục `themes/`. Không cần cài đặt thêm.

### 3. Chạy Local Development Server

```bash
hugo server -D
```

Website sẽ chạy tại: `http://localhost:1313/FCJ-Report/`

## Cấu Trúc Dự Án

```
FCJ-Report/
├── config.toml                 # Cấu hình Hugo chính
├── deploy.bat                  # Script tự động deploy
│
├── content/                    # Nội dung markdown
│   ├── _index.md              # Trang chủ (English)
│   ├── _index.vi.md           # Trang chủ (Tiếng Việt)
│   │
│   ├── 1-Worklog/             # Nhật ký công việc hàng tuần
│   │   ├── 1.1-Week1/
│   │   ├── 1.2-Week2/
│   │   └── ...
│   │
│   ├── 2-Proposal/            # Đề xuất dự án
│   │
│   ├── 3-BlogsTranslated/     # Bài viết đã dịch
│   │   ├── 3.1-Blog1/
│   │   ├── 3.2-Blog2/
│   │   └── 3.3-Blog3/
│   │
│   ├── 4-EventParticipated/   # Sự kiện tham gia
│   │   ├── 4.1-Event1/
│   │   ├── 4.2-Event2/
│   │   └── ...
│   │
│   ├── 5-Workshop/            # Workshop tự tạo
│   │   ├── 5.1-Workshop-overview/
│   │   ├── 5.2-Prerequiste/
│   │   ├── 5.3-Knowledge-Base/
│   │   └── ...
│   │
│   ├── 6-Self-evaluation/     # Tự đánh giá
│   │
│   └── 7-Feedback/            # Chia sẻ và phản hồi
│
├── static/                     # Static assets
│   ├── images/                # Hình ảnh
│   ├── files/                 # Files tài liệu
│   └── css/                   # Custom CSS
│
├── layouts/                    # Custom layouts
│   ├── partials/              # Partial templates
│   │   ├── logo.html
│   │   ├── custom-footer.html
│   │   └── menu-footer.html
│   └── shortcodes/            # Hugo shortcodes
│
├── themes/                     # Hugo themes
│   └── hugo-theme-learn/      # Documentation theme
│
└── public/                     # Generated static site (sau khi build)
```

## Sử Dụng

### Tạo Nội Dung Mới

```bash
# Tạo file markdown mới
hugo new content/section-name/post-name.md
hugo new content/section-name/post-name.vi.md  # Bản Tiếng Việt
```

### Front Matter Template

Mỗi file markdown cần có front matter:

```yaml
---
title: "Tiêu đề trang"
date: "2025-12-07"
weight: 1
chapter: false
pre: " <b> 1.1. </b> "
---

# Nội dung của bạn ở đây
```

### Build Static Site

```bash
# Build production site
hugo

# Build với drafts
hugo -D
```

Files được tạo trong thư mục `public/`

## Triển Khai

### Tự Động Deploy với Script

Dự án bao gồm script `deploy.bat` để tự động build và deploy lên GitHub Pages:

```bash
# Windows
.\deploy.bat
```

Script này sẽ:
1. Build Hugo site
2. Khởi tạo Git repository trong `public/`
3. Commit các thay đổi
4. Push lên branch `gh-pages`

### Deploy Thủ Công

```bash
# Build site
hugo

# Navigate to public folder
cd public

# Initialize git and deploy
git init
git add .
git commit -m "Deploy update"
git branch -M gh-pages
git remote add origin https://github.com/tuanvu250/FCJ-Report.git
git push -f origin gh-pages
```

### Cấu Hình GitHub Pages

1. Truy cập repository Settings → Pages
2. Source: Deploy from branch `gh-pages`
3. Folder: `/ (root)`
4. Save

Website sẽ có sẵn tại: `https://tuanvu250.github.io/FCJ-Report/`

## Nội Dung Báo Cáo

Báo cáo thực tập bao gồm 7 phần chính:

### 1. [Worklog](content/1-Worklog/) 📝
Nhật ký công việc chi tiết theo tuần, ghi lại các hoạt động, kết quả đạt được và bài học trong suốt quá trình thực tập.

### 2. [Proposal](content/2-Proposal/) 📋
Đề xuất dự án và kế hoạch thực hiện cho workshop chính.

### 3. [Blogs Translated](content/3-BlogsTranslated/) 📰
Các bài viết kỹ thuật đã dịch từ tiếng Anh sang tiếng Việt về AWS services và cloud computing.

### 4. [Events Participated](content/4-EventParticipated/) 🎯
Tổng hợp các sự kiện AWS đã tham dự bao gồm:
- GenAI & Data workshops
- AI-Driven Development Lifecycle
- Data Science on AWS
- AWS Community events

### 5. [Workshop](content/5-Workshop/) 🛠️
Workshop tự tạo: "Building AI-Powered Knowledge Base with Amazon Bedrock"
- Overview và architecture
- Prerequisites
- Knowledge Base setup
- Testing và integration
- Data updates và maintenance

### 6. [Self-evaluation](content/6-Self-evaluation/) 📊
Đánh giá tự thân về quá trình thực tập, kỹ năng đạt được và định hướng phát triển.

### 7. [Feedback](content/7-Feedback/) 💬
Chia sẻ kinh nghiệm và phản hồi về chương trình thực tập FCJ.

## Tùy Chỉnh

### Thay Đổi Theme

Chỉnh sửa trong `config.toml`:

```toml
[params]
  themeVariant = "workshop"  # Có thể là "red", "blue", "green", "workshop"
```

### Custom CSS

Thêm custom styles vào `static/css/` và import trong layouts.

### Logo & Footer

- Logo: `layouts/partials/logo.html`
- Footer: `layouts/partials/custom-footer.html`
- Menu Footer: `layouts/partials/menu-footer.html`

## Liên Kết Hữu Ích

- 🌐 **Live Site:** [https://tuanvu250.github.io/FCJ-Report/](https://tuanvu250.github.io/FCJ-Report/)
- 📘 **Hugo Documentation:** [https://gohugo.io/documentation/](https://gohugo.io/documentation/)
- 🎨 **Hugo Learn Theme:** [https://learn.netlify.app/](https://learn.netlify.app/)
- 👥 **AWS Study Group:** [Facebook Group](https://www.facebook.com/groups/awsstudygroupfcj/)

## License

Copyright © 2025 Uong Tuan Vu - FCJ Internship Report

---

**Được xây dựng với ❤️ tại AWS First Cloud Journey Program**
