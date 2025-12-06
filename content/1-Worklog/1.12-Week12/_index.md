---
title: "Week 12 Worklog"
date: "2025-11-30"
weight: 1
chapter: false
pre: " <b> 1.12. </b> "
---

### Week 12 Objectives:

- **Production Deployment**: Deploy to AWS S3 + CloudFront.
- **Docker Deployment**: Test deployment with Docker.
- **Quality Assurance**: UAT, Security Audit, Documentation, and Final Polish.

### Tasks to be carried out this week:

| Day | Task | Start Date | Completion Date | Reference Material |
| --- | --- | --- | --- | --- |
| 1 | - **Static Export & AWS Deployment**: Configure Next.js `output: export`. Upload static build to S3 Bucket. Configure CloudFront distribution pointing to S3, set up Custom Domain with Route 53 and ACM SSL certificate. | 24/11/2025 | 24/11/2025 | [AWS S3 Hosting](https://docs.aws.amazon.com/AmazonS3/latest/userguide/WebsiteHosting.html) |
| 2 | - **Docker Setup**: Write multi-stage `Dockerfile` optimizing size and `docker-compose.yml` for production. Build image and test deployment on Staging EC2 environment. | 25/11/2025 | 25/11/2025 | [Docker Docs](https://docs.docker.com/) |
| 3 | - **UAT & Hotfixes**: Open access for testers/users to run User Acceptance Testing (UAT). Monitor error logs, fix arising bugs, and refine caching policy. | 26/11/2025 | 26/11/2025 | |
| 4 | - **Security & Performance**: Audit API keys security, configure Content Security Policy (CSP). Analyze bundle size, implement code splitting and lazy loading to improve Lighthouse scores. | 27/11/2025 | 27/11/2025 | |
| 5 | - **Documentation & Code Quality**: Finalize API documentation (Swagger/Postman), update README.md with installation instructions. Run full linting and type-checking one last time to clean code. | 28/11/2025 | 28/11/2025 | |
| 6 | - **Final Polish & Preparation**: Review overall UI/UX, ensuring no minor bugs remain. Package source code and prepare technical documentation for handover. <br> - Participate in AWS Cloud Mastery Series #3: Cloud Security & Operations Mastery | 29/11/2025 | 29/11/2025 | |

### Week 12 Achievements:

- **Successful Deployment**: Website runs stably on Production (AWS) and Docker.
- **Finished Product**: Meets all requirements, good security, high performance.
- **Ready for Handover**: Fully prepared documentation and quality source code.
