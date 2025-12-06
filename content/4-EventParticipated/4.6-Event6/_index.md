---
title: "Event 6"
date: "2025-09-09"
weight: 1
chapter: false
pre: " <b> 4.6. </b> "
---

# Report: “AWS Cloud Mastery Series #3”

### Event Purpose

This series was not just about individual services but a journey in **System Thinking**, helping to transition from traditional infrastructure management to a **Cloud-Native Security** model. The core objectives included:

- **Community Connection:** Spreading the spirit of learning and skill development through AWS Cloud Clubs.
- **Governance Foundation:** Managing scale with hundreds of AWS accounts while ensuring compliance.
- **Defense in Depth:** Combining Identity, Network, and Data protection to eliminate Single Points of Failure.
- **Automated Response:** Removing human latency from the incident response process.

### Speakers List

The event gathered top experts from the AWS community, including AWS Community Builders, Cloud Engineers, and core members of the First Cloud Journey program:

- **AWS Cloud Clubs Representatives:** Captains from HCMUTE, SGU, PTIT, HUFLIT (Le Vu Xuan An, Tran Duc Anh, Tran Doan Cong Ly, Danh Hoang Hieu Nghi).
- **Identity & Governance:** Huynh Hoang Long, Dinh Le Hoang Anh (AWS Community Builders).
- **Detection & Monitoring:** Tran Duc Anh, Nguyen Tuan Thinh, Nguyen Do Thanh Dat.
- **Network Security:** Kha Van (Cloud Security Engineer | AWS Community Builder).
- **Data Protection:** Thinh Lam, Viet Nguyen.
- **Incident Response:** Mendel Grabski (Long) - ex Head of Security & DevOps, Tinh Truong - Platform Engineer.

### Detailed Content

#### **PART 1: KICK-OFF - AWS CLOUD CLUBS & OPPORTUNITIES**

The journey began with the introduction of AWS Cloud Clubs, a place to nurture future Cloud talents.

**1. Vision:**

- Empower students to explore and grow cloud computing skills.
- Develop technical leadership and build global connections.

**2. Core Benefits:**

- **Build Skills:** Learn through hands-on projects, access AWS exam vouchers and Udemy accounts.
- **Build Community:** Connect with AWS experts and industry speakers.
- **Build Opportunities:** Enhance personal portfolios, receive AWS credits, and get career support.

**3. The Badging Journey:**

- Gamified development roadmap for Core Team members and Captains.
- Levels ranging from **Bronze, Silver, Gold, Platinum** to **Diamond**.
- **Rewards:** AWS Credits ($200+), Certification Vouchers, Exclusive Swag kits, and pre-approval for Student Community Day.

#### **PART 2: IDENTITY & GOVERNANCE FOUNDATION**

Security in the Cloud starts with controlling "Who can do what".

**1. Modern IAM Mindset:**

- **Identity First:** In the Cloud environment, Identity is the new firewall.
- **Credential Spectrum:** Absolute shift from **Long-term Credentials** (Permanent Access Keys - high risk) to **Short-term Credentials** (STS tokens - secure, auto-expire).
- **Least Privilege:** Apply minimum necessary permissions. Avoid using `*` in Policies unless absolutely necessary.

**2. Governance at Scale with AWS Organizations:**

- **Hierarchical Structure:** Divide the organization into Organizational Units (OUs) like _Security, Shared Services, Workloads (Prod/Dev)_ to isolate risks.
- **Service Control Policies (SCPs):** This is the "Constitution" of the organization. SCPs establish **Guardrails** that block dangerous actions (e.g., prohibiting CloudTrail disablement, restricting Regions) that even Admin accounts cannot bypass.

#### **PART 3: VISIBILITY & DETECTION**

You cannot protect what you cannot see.

**1. Amazon GuardDuty - Intelligent Scout:**

- Uses Machine Learning to detect anomalies from 3 foundational data sources: **CloudTrail** (management events), **VPC Flow Logs** (network traffic), and **DNS Logs** (domain queries).
- **Runtime Monitoring:** Advanced feature that looks "deep" inside the operating system (via a lightweight Agent) to detect strange processes, file modifications, or privilege escalation behaviors.

**2. AWS Security Hub - Command Center:**

- Solves the "alert fatigue" problem using **ASFF (AWS Security Finding Format)**. It normalizes alerts from GuardDuty, Inspector, and Macie into a single JSON language.
- Acts as a **Cloud Security Posture Management (CSPM)** tool, automatically checking if the system complies with CIS, PCI-DSS standards.

#### **PART 4: NETWORK SECURITY**

Building a "Digital Fortress" with a defense-in-depth strategy from the edge to the core.

**1. Fundamental Controls (VPC Fundamentals):**

- **Security Groups (Stateful):** Apply **Micro-segmentation**. Instead of whitelisting IP addresses (which change easily), use **Security Group Referencing** (e.g., SG-DB only allows traffic from SG-App).
- **NACLs (Stateless):** Act as a coarse filtering layer at the Subnet boundary, used to block blacklisted IPs or untrusted subnets.

**2. Advanced Defense (Advanced Filtering):**

- **DNS Firewall (Route 53 Resolver):** Blocks connections to Command & Control (C2) servers right at the domain resolution step. This is a crucial choke point against malware (like the Mélofée case study).
- **AWS Network Firewall:** Next-gen firewall with Deep Packet Inspection (DPI) capabilities.
  - **Stateless Engine:** Fast filtering based on 5-tuple (IP/Port).
  - **Stateful Engine:** Uses **Suricata-compatible** rules for Intrusion Prevention (IPS) and Domain filtering (FQDN) for Egress traffic.

**3. Modern Network Architecture:**

- Uses **AWS Transit Gateway** with Native Network Firewall integration to simplify the network model, removing the complexity of routing through an "Inspection VPC".
- Applies **Active Threat Defense**: Automatically syncs malicious IP lists from GuardDuty to Network Firewall for immediate blocking without manual intervention.

#### **PART 5: DATA PROTECTION**

Data is the ultimate asset that must be protected by encryption.

**1. Envelope Encryption:**

- Understanding the AWS KMS mechanism: **Master Key** (resides in HSM) encrypts the **Data Key**, and the **Data Key** is what encrypts the actual data. This mechanism ensures high performance and absolute security.

**2. Secrets Management:**

- **Problem:** Hardcoding passwords in source code is a basic but common error.
- **Solution:** Use **AWS Secrets Manager** for storage and, more importantly, **Automatic Rotation** of Database passwords using Lambda. Applications always retrieve the latest password via API.

**3. Infrastructure Encryption:**

- Uses **AWS Nitro System**: Encryption tasks are offloaded to specialized hardware (Nitro Cards), enabling data encryption without compromising the host server's CPU performance (Zero Performance Impact).

#### **PART 6: INCIDENT RESPONSE**

When defense layers are breached, the response process determines the extent of the damage.

**1. Prevention Strategy (Sleep Better):**

- **Golden Rules:** Eliminate long-lived SSH/Keys, Block Public S3 access, Default to Private Subnets.
- **Infrastructure as Code (IaC):** Mandate all infrastructure changes via Code (Terraform/CDK) and approval processes (PR Review), completely eliminating manual changes (ClickOps) that cause configuration drift.

**2. Standard 5-Step Process:**

- **Preparation:** Have tools and Playbooks ready.
- **Detection:** Rely on CloudTrail and GuardDuty.
- **Containment:** "Jail" infected resources by changing Security Groups or revoking IAM permissions.
- **Eradication & Recovery:** Remove malware, restore from clean backups.
- **Post-Incident:** Learn lessons.

**3. Automation is King:**

- Humans cannot race against machine speed. Hands-on labs demonstrated the necessity of using **EventBridge + Lambda** to automatically isolate compromised EC2 instances or auto-remediate public S3 buckets in seconds.

### Conclusion

The **"Cloud Security & Operations Mastery"** series has provided a comprehensive overview of building secure systems on AWS through key pillars:

- **Governance & Identity:** The foundation of every security system starts with strict user management and organizational policies.
- **Network & Monitoring:** Establishing defense-in-depth layers and comprehensive visibility to detect potential threats.
- **Data & Response:** Protecting digital assets with encryption and readying automated incident response processes to ensure service continuity.
