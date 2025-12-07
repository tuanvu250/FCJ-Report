# FCJ Internship Report

Báo cáo thực tập tại Amazon Web Services Vietnam - FCJ Cloud Intern Program.

## Mục Lục

- [Giới Thiệu](#giới-thiệu)
- [Cấu Trúc Dự Án](#cấu-trúc-dự-án)
- [Nội Dung Báo Cáo](#nội-dung-báo-cáo)

## Giới Thiệu

Website báo cáo thực tập FCJ (First Cloud Journey) cho chương trình thực tập tại Amazon Web Services Vietnam, cung cấp giao diện song ngữ (Tiếng Anh và Tiếng Việt).

### Thông Tin Sinh Viên

- **Họ và Tên:** Uông Tuấn Vũ
- **Email:** vuutse180241@fpt.edu.vn
- **Trường:** FPT University Campus TP.HCM
- **Chuyên ngành:** Software Engineering
- **Lớp:** SE180241
- **Công ty thực tập:** Amazon Web Services Vietnam Co., Ltd.
- **Vị trí:** FCJ Cloud Intern
- **Thời gian:** 08/09/2025 - 12/12/2025

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

## Liên Kết

- 🌐 **Live Site:** [https://tuanvu250.github.io/FCJ-Report/](https://tuanvu250.github.io/FCJ-Report/)
- 👥 **AWS Study Group:** [Facebook Group](https://www.facebook.com/groups/awsstudygroupfcj/)

## License

Copyright © 2025 Uong Tuan Vu - FCJ Internship Report

---

**Được xây dựng với ❤️ tại AWS First Cloud Journey Program**
