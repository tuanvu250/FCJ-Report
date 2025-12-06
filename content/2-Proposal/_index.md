---
title: "Proposal"
date: "2025-09-09"
weight: 2
chapter: false
pre: " <b> 2. </b> "
---

# Personal Finance Management App (Vicobi)

### You can read the full proposal here: <a href="/files/2-Proposal/Vicobi_Proposal.pdf" download>Vicobi Proposal</a>

### 1. Executive Summary

The **Vicobi** (Personal Finance Management App) project aims to provide an intelligent, modern, and highly automated personal financial management platform. Vicobi simplifies financial management through 4 main pillars:

1.  **Smart Recording:** Voice input and invoice scanning, eliminating manual data entry barriers.
2.  **Goal-based Budgeting:** Automated creation and flexible management of money jars.
3.  **Analysis & Control:** Provides visual reports and intelligent alert systems.
4.  **AI Financial Assistant (Chatbot):** Integrates AI Chatbot acting as an advisor, supporting inquiries and enhancing financial knowledge.

From a technical perspective, Vicobi is built on a **Microservices** architecture using **.NET Aspire** and **FastAPI**, deployed on **AWS Cloud**, ensuring flexibility and data security. The development process follows the **Agile/Scrum** model (2 weeks/sprint during the main development phase), with the goal of completing MVP within 2 months of execution.

### 2. Problem Statement

#### Current Problem

In today's dynamic market, users face difficulties in controlling finances due to "behavioral inertia" — reluctance to manually record each transaction. Existing applications (like Money Lover, Misa Money Keeper) still rely heavily on manual input, causing "input fatigue" and high abandonment rates.

#### Solution

Vicobi solves the problem through high automation of the data entry process using AWS Cloud and Microservices:

- **Core Technology:** Integrates AI for Vietnamese voice processing (Voice-to-Text) and detailed invoice recognition (OCR).
- **Optimized Architecture:** Uses **AWS ECS Fargate** running Multi-container Task model (combining .NET Backend and AI Service) to reduce infrastructure costs while ensuring seamless communication.
- **Modern Frontend:** Uses **Next.js** hosted on **Amazon S3** and distributed globally via **Amazon CloudFront**.

#### Benefits and Return on Investment (ROI)

The solution provides clear competitive advantages:

- **User Value:** Reduces over **70%** manual operations. Voice recognition accuracy reaches **90%** and invoice extraction reaches **80%**.
- **Economic Efficiency:** Maximizes AWS Free Tier usage (S3, CloudFront, Cognito). Lean operating budget around **~$60/month** for infrastructure and **~$15/month** for AI compute.
- **ROI:** Expected to achieve ROI within **6–12 months** thanks to time savings and increased efficiency.
- **Scalability:** Microservices architecture ready for Mobile App integration or Open Banking.

### 3. Solution Architecture

The system is designed with a distributed **Microservices** model, using API Gateway as the single entry point.

![Personal Finance Management App Software Architecture](/images/2-Proposal/development_architecture.png)

#### Tech Stack Details:

| Component        | Technology           | Details                                                                       |
| :--------------- | :------------------- | :---------------------------------------------------------------------------- |
| **Frontend**     | **Next.js 16**       | App Router, TypeScript, Tailwind CSS, Zustand, React Query.                   |
| **Backend Core** | **.NET Aspire**      | Orchestrates Microservices (User, Wallet, Transaction, Report, Notification). |
| **AI Service**   | **FastAPI (Python)** | Handles Voice (PhoWhisper), OCR (Bedrock), Chatbot (RAG).                     |
| **Database**     | **Polyglot**         | PostgreSQL, MongoDB, Elasticsearch, Qdrant (Vector DB).                       |
| **Messaging**    | **RabbitMQ**         | Asynchronous communication between services.                                  |

![Personal Finance Management App Cloud Architecture](/images/2-Proposal/cloud_architecture.png)

#### AWS Workflow:

1.  **Access:** Users access via **Route 53**, protected by **AWS WAF** and accelerated by **CloudFront**.
2.  **Authentication:** **Amazon Cognito** manages identity and issues JWT Tokens.
3.  **API Processing:** Requests go through **API Gateway**, connecting securely via **AWS PrivateLink** to **Application Load Balancer (ALB)**.
4.  **Compute:** ALB distributes load to containers in **ECS Fargate** (located in Private Subnet).
5.  **DevOps:** CI/CD process fully automated by **GitLab**, builds images pushed to **Amazon ECR** and updates tasks on ECS.

### 4. Technical Deployment

#### Implementation Phases

The project spans 4 months (including internship):

1.  **Month 0 (Pre-internship):** Ideation and overall planning.
2.  **Month 1 (Foundation):** Learn AWS, upgrade .NET/Next.js/AI skills. Set up VPC, IAM.
3.  **Month 2 (Design):** Design High-level & Detailed architecture on AWS.
4.  **Month 3-4 (Realization):** Coding, Integration Testing, Deploy to AWS Production, set up Monitoring.
5.  **After Month 5:** Research and develop Mobile App.

#### Detailed Technical Requirements:

- **Frontend:** Deploy **Next.js 16** on S3 + CloudFront. Use **Origin Access Control (OAC)** to secure bucket.
- **Backend:**
  - Use **.NET Aspire** to manage Cloud-native configuration.
  - Database-per-service: **PostgreSQL** & **MongoDB**. **Elasticsearch** for complex transaction search.
  - Background Jobs: Use **Hangfire**.
- **AI Service Pipelines:**
  - _Voice:_ Preprocessing with Pydub, **PhoWhisper-small** Model (VinAI) for Vietnamese.
  - _OCR:_ **Amazon Bedrock** (Claude 3.5 Sonnet Multimodal) to accurately extract invoice information.
  - _Chatbot (RAG):_ Knowledge Base stored in **Qdrant**, generates responses via **Amazon Bedrock** (Claude 3.5 Sonnet).
- **Security:**
  - Data encryption in transit (HTTPS/TLS 1.2+) and at rest (AES-256).
  - Secrets management not deeply integrated (currently at MVP level), will upgrade to AWS Secrets Manager in the future.

### 5. Timeline & Milestones (Sprints)

The main execution phase is divided into 4 Sprints:

- **Sprint 1: Core Foundation**
  - Authentication (Cognito), Wallet Management, Spending Jars.
- **Sprint 2: Core Features**
  - Transactions (CRUD), AI Voice Processing.
- **Sprint 3: Analytics**
  - Reports/Charts, Notification System (SES), Message Broker.
- **Sprint 4: Stabilization**
  - Integration Testing, UI Refinement, Deploy to AWS ECS & CloudFront.
- **Testing & Go-live:**
  - Domain Configuration, SSL, Monitoring Dashboard, UAT and project defense.

### 6. Budget Estimation

Based on detailed cost estimates for the MVP phase.

You can review the detailed cost estimation by downloading the following files:
_📊 <a href="/files/2-Proposal/pricing.csv" download>CSV Pricing File</a>_
_💾 <a href="/files/2-Proposal/pricing.json" download>JSON Pricing File</a>_

| AWS Service                | Component / Usage         | Cost (USD/month) |
| :------------------------- | :------------------------ | :--------------- |
| **Elastic Load Balancing** | Application Load Balancer | $18.98           |
| **Amazon ECS**             | Fargate (vCPU & Memory)   | $17.30           |
| **Amazon VPC**             | VPC Endpoints & NAT       | $10.49           |
| **AWS WAF**                | Web ACL & Requests        | $7.20            |
| **Amazon API Gateway**     | API Calls & Data Transfer | $2.50            |
| **Amazon CloudFront**      | Data Transfer Out         | $2.00            |
| **Amazon ECR**             | Storage                   | $1.00            |
| **Amazon Route 53**        | Hosted Zones              | $0.54            |
| **Amazon S3**              | Standard Storage          | $0.34            |
| **TOTAL AWS COST**         |                           | **~$60.35**      |

**Other Costs:**
| Category | Details | Cost (USD/month) |
| :--- | :--- | :--- |
| **AI Compute / Tooling** | Gemini API, Amazon Bedrock | ~$15.00 |
| **PROJECT TOTAL** | | **~$75.35 / month** |

_(Based on On-Demand pricing in Singapore region - ap-southeast-1)_

### 7. Risk Assessment

- **Main Risks:** User information leakage (Impact: High), AWS Region connection loss (Impact: High), AI misrecognition (Impact: Medium).
- **Mitigation Strategies:**
  - _Security:_ AES-256 encryption, HTTPS, IAM Least Privilege, AWS WAF.
  - _High Availability:_ Multi-AZ deployment for ECS and ALB.
  - _AI:_ Continuously improve model with real data.
  - _Resilience:_ Use internal RabbitMQ for asynchronous processing and retry.
- **Disaster Recovery Plan:** Use IaC (Infrastructure as Code) for rapid infrastructure restoration.

### 8. Expected Results & Team

#### Expected Results of the Project

- **Automated financial data entry:** The application helps users avoid manual entry, just take a photo of the invoice or record a voice for the system to automatically classify spending.
- **Intuitive financial management:** Users can view spending charts, monthly reports, and receive savings suggestions based on consumer behavior.
- **Minimal user experience:** Friendly web interface, modern design, optimized for mobile devices and suitable for people new to financial management.
- **Stable, scalable system:** Microservices architecture makes it easy to add new features such as spending reminders, AI predictive analysis, or expand to a mobile app.
- **Improving development team skills:** Project members have practical access to DevOps processes, CI/CD implementation, and cloud-based application optimization.

#### Project Limitations

- **Vietnamese AI model is still limited:** The ability to recognize regional voices or handwritten invoices has not yet achieved high accuracy.
- **No separate mobile application:** The MVP version only supports the web platform, there is no native mobile app.

#### Implementation Team:

| Name                     | Role                        | Email                     |
| :----------------------- | :-------------------------- | :------------------------ |
| **Le Vu Phuong Hoa**     | Backend Developer (Leader)  | hoalvpse181951@fpt.edu.vn |
| **Nguyen Van Anh Duy**   | AI Developer (Member)       | duynvase181823@fpt.edu.vn |
| **Uong Tuan Vu**         | Frontend Developer (Member) | vuutse180241@fpt.edu.vn   |
| **Tran Nguyen Bao Minh** | AI Developer (Member)       | baominhbrthcs@gmail.com   |

**Mentor Support:**

- **Nguyen Gia Hung** - Head of Solution Architects
- **Van Hoang Kha** - Cloud Security Engineer