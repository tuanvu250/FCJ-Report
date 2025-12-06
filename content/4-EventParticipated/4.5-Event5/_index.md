---
title: "Event 5"
date: "2025-09-18"
weight: 1
chapter: false
pre: " <b> 4.5. </b> "
---

# Report “AWS Cloud Mastery Series #2: From DevOps, IaC to Containers & Observability”

### Event Objectives

- **Standardize Mindset:** Deeply understand the Value Cycle and the core role of DevOps in continuous, reliable software delivery.
- **Modernize Infrastructure (IaC):** Shift from manual operations (ClickOps) to managing infrastructure as code using CloudFormation, Terraform, and CDK.
- **Optimize Applications (Containerization):** Master the architecture and strategy for selecting the appropriate container platform: App Runner, ECS, or EKS.
- **Comprehensive Monitoring (Observability):** Build proactive monitoring systems to detect errors and optimize performance using CloudWatch and X-Ray.

### Speakers

- **AWS Experts & Cloud Engineers:** Shared insights on system architecture, Platform Engineering strategies, and deep-dive technical demos.

### Key Content Details

#### **1. DevOps Mindset & CI/CD Pipeline (The Foundation)**

The event began by redefining DevOps not just as a set of tools, but as a culture of optimizing the value stream.

- **The Value Cycle:**

  - A closed-loop 5-step process: _Insights & Analysis -\> Portfolio & Backlog -\> Continuous Integration -\> Continuous Testing -\> Continuous Delivery_.
  - Core Goal: Increase delivery speed (**Speed**) to meet market demands faster, while ensuring system stability (**Stability**) and quality.

- **Redefining CI/CD Concepts:**

  - **Continuous Integration (CI):** Developers merge code frequently (daily). The system automatically builds and runs Unit Tests. The goal is to detect errors early (**Fail fast**).
  - **Continuous Delivery:** Automates the deployment process to Staging/Pre-prod environments. Deployment to Production requires human approval (**Manual Trigger**).
  - **Continuous Deployment:** Fully automated 100% from Code Commit to running in Production (no manual intervention).

- **Effective Pipeline Strategy:**

  - **Centralized CI:** Build a centralized CI system for security and resource management, but ensure **Self-service** capabilities for Developers to avoid bottlenecks.
  - **Artifact Management:** Apply the **"Build Once, Deploy Anywhere"** principle. Source code is built only once into a Binary package (Artifact). Subsequent environments (Staging, Prod) use this exact Artifact for deployment, ensuring absolute consistency.
  - **Fail Fast Conditions:** The pipeline must be configured to fail immediately if violations occur: Compilation errors, Code Style violations, Security scans finding vulnerabilities, or Tests running too slow.

- **Measuring Efficiency (Metrics):**

  - Use **Heatmaps** to monitor the Pipeline health of the entire organization.
  - Golden Metrics: _Deployment Frequency_, _Change Failure Rate_, and _MTTR_ (Mean Time To Recovery).

#### **2. Infrastructure as Code (IaC) - From ClickOps to Code**

This section delved into eliminating manual habits (ClickOps) and moving towards full infrastructure automation.

- **The Problem with "ClickOps":** Manual operations on the AWS Console are prone to Human Error, slow, hard to scale, and cause inconsistency between Dev/Prod environments.
- **IaC Solutions:** Provide Automation, Scalability, Reproducibility, and Collaboration.

**Deep Dive into Top 3 IaC Tools:**

- **1. AWS CloudFormation (Native Tool):**

  - Uses text files (**YAML** or **JSON**) to describe the desired state.
  - **Template Anatomy:** Structure includes _Parameters_ (Dynamic inputs), _Mappings_ (Handling regional differences - e.g., different AMI IDs per Region), and _Resources_ (The actual assets to create).
  - **Stack:** The unit for managing resource lifecycles. Deleting a Stack deletes all associated resources.

- **2. Terraform (Multi-Cloud Powerhouse):**

  - Open-source tool, uses **HCL** (HashiCorp Configuration Language).
  - **Strength:** Multi-platform support (Multi-cloud: AWS, Azure, GCP...).
  - **Workflow:** _Write_ (Code) -\> _Plan_ (Preview changes) -\> _Apply_ (Execute). The **Plan** step is critical for safety checks.
  - **State File:** Stores the actual state of the infrastructure for synchronization.

- **3. AWS CDK (Cloud Development Kit):**

  - Allows defining infrastructure using **programming languages** (Python, TypeScript, Java...).
  - **Constructs:**
    - _L1 (Cfn Resources):_ Detailed configuration for every line (like CloudFormation).
    - _L2 (Curated):_ Automatically applies Best Practices and secure default configurations.
    - _L3 (Patterns):_ Builds complex architectures (e.g., VPC + ALB + ECS) in just a few lines of code.

- **Drift Detection:** A crucial feature to detect discrepancies between Code and Reality (caused by manual "ClickOps" changes), helping maintain operational discipline.

#### **3. Containerization - Application Strategy**

Deep analysis of container orchestration platforms:

- **Kubernetes (K8s):**

  - Architecture includes **Control Plane** (API Server, etcd, Scheduler) and **Worker Nodes** (Kubelet, Pods).
  - Powerful and flexible but complex to operate.

- **Comparison: Amazon ECS vs. Amazon EKS:**

  - **Amazon ECS:** Simple, deeply integrated with AWS (ALB, IAM). Suitable for teams wanting to reduce operational overhead and deploy fast.
  - **Amazon EKS:** Based on standard Kubernetes. Powerful, massive ecosystem. Suitable for Enterprises, complex systems, or Hybrid-cloud.

- **Compute Options:**

  - **EC2 Launch Type:** You manage the servers (Patching, Scaling). Highest control but high operational effort.
  - **AWS Fargate (Serverless):** No server management required. AWS handles the infrastructure; users only define CPU/RAM for Tasks. Secure and convenient.

- **AWS App Runner:**

  - **"Zero-ops"** solution for Web Apps/APIs.
  - Fully automated from Source Code/Image -\> Public URL (HTTPS) without configuring networking or servers.

#### **4. Observability - Monitoring & Optimization**

Closing the development lifecycle loop with deep observability to ensure stable system operation.

- **Amazon CloudWatch (System Eyes & Ears):**

  - **Metrics:** Collect performance data (CPU, Memory, Disk).
  - **Logs:** Centralized application log collection. Use Logs Insights to query errors.
  - **Alarms:** Automatically trigger actions (Auto Scaling, Restart Server, Send Notifications) when thresholds are breached.

- **AWS X-Ray (Distributed Tracing):**

  - Solves the "needle in a haystack" problem in Microservices.
  - **Distributed Tracing:** Tracks the journey of a request across multiple services to identify bottlenecks and root causes.

- **AWS Observability Best Practices:**

  - Utilize AWS resources to reference standard **Patterns** and **Recipes**.
  - Clear distinction: **Logs** (Discrete events) vs. **Traces** (Connected journeys).

### Event Experience & Reflection

Participating in this series brought significant changes to my perception and technical skills:

#### 1\. The Shift from "Ops" to "Platform Engineering"

I realized the role of modern DevOps is not running after Developers to manually deploy code. DevOps is about architecting a **"Highway" (Pipeline & Platform)**. A good platform allows Developers to **Self-service** environment creation and code deployment quickly, while staying within the safety boundaries (**Governance**) established by the DevOps team.

#### 2\. Operational Discipline

Lessons on **Artifact Management** and **Drift Detection** are golden rules. In an Enterprise environment, consistency is vital. Differences in build processes across environments (Dev/Test/Prod) are strictly prohibited, and manual changes to code-managed systems must be forbidden.

#### 3\. Smart Tool Selection Strategy

There is no "best" tool, only the "most suitable" one:

- Need absolute stability and deepest support for new AWS services: Choose **CloudFormation**.
- Enterprise using Multi-cloud or Hybrid-cloud: **Terraform** is the optimal choice.
- Strong Programming Development Team needing to build complex architectures fast with high code reuse: **AWS CDK** is the strongest weapon.
- Simple Web Applications: Use **App Runner** instead of wasting resources operating a Kubernetes cluster.

### Conclusion

The **"DevOps & IaC Mastery"** series provided a complete roadmap for the Cloud journey:

- **Mindset:** Transitioning from manual work to automation and data-driven measurement.
- **Infrastructure:** Mastering IaC for scalable, reproducible systems with drift control.
- **Operations:** Combining flexible Containerization and deep Observability to ensure system stability, high performance, and self-healing capabilities.

This is a solid knowledge foundation for building large-scale, modern software systems on AWS.

#### Some photos from the event
