# terraform
# AWS Billing Alert & Cost Anomaly Detection (Terraform)
 
This project implements **AWS cost monitoring** using **Terraform**, with alerts designed to notify as soon as **any cost is incurred** and when **unexpected (anomalous) spending** occurs — all while keeping the total monitoring cost **under $1**.
 
---
 
## 🎯 Project Objectives
 
- 📧 Send an email when AWS billing exceeds **$0**
- 🚨 Detect **cost anomalies** (unexpected spending) with impact ≥ **$0**
- 🧱 Use **Terraform** for Infrastructure as Code
- 🔐 Follow best practices for security and GitHub hygiene
- 💸 Keep monitoring costs minimal
 
---
 
## 🏗 Architecture Overview
CloudWatch Billing Alarm ──▶ SNS ──▶ Email Cost Explorer Anomaly Detection ──▶ Email (Direct)
