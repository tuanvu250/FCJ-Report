---
title: "Translated Blogs"
date: "2025-09-09"
weight: 3
chapter: false
pre: " <b> 3. </b> "
---

### [Blog 1 - Running and Optimizing Small Language Models On-Premises and at the Edge](3.1-Blog1/)

This blog provides a comprehensive guide on deploying Small Language Models (SLMs) to AWS on-premises or edge environments (AWS Local Zones and AWS Outposts) to meet requirements for data residency, information security policies, and low latency. The content covers: differences between LLMs and SLMs, benefits of SLMs (faster inference time, lower resource requirements, suitable for edge computing), deployment architecture using the Llama.cpp framework, specific steps for installation and configuration (launching GPU instances, installing NVIDIA drivers, installing Llama.cpp, downloading and converting models to GGUF format), and optimization examples for chatbot and text summarization use cases.

### [Blog 2 - AWS EUC New York Summit: The AI Advantage: Unlocking the Full Potential of Your EUC Services](3.2-Blog2/)

This blog introduces a discussion session at the AWS EUC New York Summit, focusing on how to apply AI to optimize End-User Computing (EUC) administrative tasks and enhance user productivity. Main content includes: leveraging Amazon Bedrock's agentic AI combined with Amazon WorkSpaces and Amazon CloudWatch to automate administrative tasks, providing actionable insights from critical metrics and logs, collecting data on user connectivity, platforms, and IP addresses, and analyzing data to optimize end-user operations. The builders session provides in-depth knowledge and hands-on learning experience on integrating AI into existing EUC frameworks.

### [Blog 3 - How to Set Up Automated Alerts for Newly Purchased AWS Savings Plans](3.3-Blog3/)

This blog provides a guide on setting up an automated monitoring and alerting system to detect underutilized AWS Savings Plans within the eligible refund period (first 7 days and within the same purchase month). Content includes: explanation of AWS Savings Plans and refund policy (commitments ≤ $100/hour), solution architecture using AWS CloudFormation, Step Functions, SNS, EventBridge, and IAM roles, deployment across two accounts (Management Account and Member Account) following AWS security best practices, automated process to analyze Savings Plans utilization rates and send email alerts when detecting plans below predefined thresholds, detailed step-by-step deployment instructions and solution testing procedures.
