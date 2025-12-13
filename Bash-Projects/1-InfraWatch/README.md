# 1-InfraWatch  
**Automated Daily AWS Resource Usage Reporting using Bash, AWS CLI, and Cron**

---

## 📌 Project Overview

**InfraWatch** is a lightweight DevOps automation project that generates daily AWS resource usage reports using **Bash scripting**, **AWS CLI**, and **cron jobs**.

The script runs automatically every day at **9:00 AM** and stores the output in a structured `logs/` directory with **date-wise log files**.  
This project demonstrates how basic shell scripting can be combined with cloud tooling to solve **real-world DevOps monitoring problems**.

---

## 🎯 Problem Statement

In many organizations, AWS resources such as **EC2, S3, Lambda, and IAM** are used daily, but there is often:

- No simple daily visibility of resource usage  
- No lightweight monitoring for small teams  
- Manual checking via AWS Console  

This leads to:

- Poor resource awareness  
- Cost inefficiencies  
- Delayed detection of unused or misconfigured resources  

---

## 💡 Solution

InfraWatch solves this by:

- Using **AWS CLI** to fetch AWS resource information  
- Automating execution using **cron jobs**  
- Saving daily reports in **date-based log files**  
- Keeping everything lightweight and script-based (no heavy monitoring tools)

---

## 🛠️ Technologies Used

- Bash Shell Scripting  
- AWS CLI  
- Cron Jobs (Linux Scheduler)  
- Linux (Fedora / Ubuntu compatible)

---

## 📁 Project Structure

```
1-InfraWatch/
│
├── aws-resourse-tracker.sh      # Main automation script
│
├── logs/                        # Daily generated reports
│   └── aws-report-YYYY-MM-DD.log
│
├── cron/                        # Cron documentation
│   ├── infra-watch.cron
│   └── README.md
│
└── README.md                    # Project documentation
```

---

## ⚙️ How the Script Works (Step by Step)

### Step 1: Script Location Detection

```bash
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
```

### Step 2: Logs Directory Setup

```bash
LOG_DIR="$SCRIPT_DIR/logs"
```

### Step 3: Date-Based Log File Creation

```bash
TODAY_DATE=$(date +"%Y-%m-%d")
LOG_FILE="$LOG_DIR/aws-report-$TODAY_DATE.log"
```

Example:
```
logs/aws-report-2025-12-13.log
```

### Step 4: Redirect Output to Log File

```bash
exec >> "$LOG_FILE" 2>&1
```

### Step 5: AWS CLI Commands Execution

```bash
aws ec2 describe-instances
aws s3 ls
```

---

## ▶️ How to Run Manually (Testing)

```bash
chmod +x aws-resourse-tracker.sh
./aws-resourse-tracker.sh
ls logs/
cat logs/aws-report-YYYY-MM-DD.log
```

---

## ⏰ Cron Automation (Daily at 9 AM)

```cron
0 9 * * * /full/path/to/1-InfraWatch/aws-resourse-tracker.sh
```

⚠️ Always use absolute paths in cron jobs.

---

## 📂 Cron Folder Purpose

The `cron/` folder is included for **documentation and reproducibility**.

- `infra-watch.cron` – cron schedule entry  
- `README.md` – cron setup instructions  

---

## 🔐 Prerequisites

```bash
aws configure
```

Required AWS permissions:
- EC2 (read)
- S3 (read)
- Lambda (read)
- IAM (read)

---

## 🚀 Key Learnings from This Project

- Bash scripting fundamentals  
- Redirecting output to files  
- Date-based log generation  
- Cron job automation  
- AWS CLI integration  
- Project structuring for GitHub  
- DevOps automation mindset  

---

## 📈 Real-World Use Cases

- Daily AWS resource visibility  
- Lightweight monitoring for startups  
- Cost awareness and audits  
- Resume and interview demonstration project  

---

## 🔮 Future Enhancements

- Email or Slack notifications  
- Cost estimation using AWS Cost Explorer  
- JSON or CSV formatted reports  
- Log rotation  
- Multi-account support  
- Error alerting  

---

## 👤 Author

**Pruthviraj S. Patil**  
DevOps & Cloud Enthusiast  
Project: **InfraWatch**
