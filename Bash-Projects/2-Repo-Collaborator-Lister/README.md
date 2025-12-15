# 2-Repo-Collaborator-Lister
**Automated GitHub Repository Collaborator Listing using Bash, GitHub API, curl, and jq**

---

## 📌 Project Overview

**2-Repo-Collaborator-Lister** is a shell scripting automation project that allows DevOps engineers to list all users who have access to a specific GitHub repository using the command line.

Instead of manually navigating through the GitHub web interface, this project uses the **GitHub REST API** to fetch collaborator details programmatically, making access audits faster, scalable, and automation-friendly.

---

## 🎯 Problem Statement

In organizations managing multiple GitHub repositories, checking who has access to a repository is often done manually through the GitHub UI. This approach is slow, repetitive, and inefficient—especially during tasks such as employee offboarding, access audits, or security reviews.

There is a need for a command-line based automated solution to quickly retrieve repository collaborator information.

---

## 💡 Solution

This project provides a Bash script that:
- Authenticates securely with GitHub using environment variables
- Calls the GitHub API to retrieve repository collaborators
- Parses JSON responses using `jq`
- Displays a clean list of GitHub usernames with access to the repository

---

## 🛠️ Technologies Used

- Bash Shell Scripting  
- GitHub REST API  
- curl (HTTP requests)  
- jq (JSON parsing)  
- Linux (Ubuntu / Fedora compatible)

---

## 📁 Project Structure

```
2-Repo-Collaborator-Lister/
│
├── list-users.sh      # Main shell script
└── README.md          # Project documentation
```

---

## 🔐 Authentication & Security

To keep credentials secure, GitHub username and Personal Access Token (PAT) are not hardcoded in the script.

They are provided using environment variables:
- `GITHUB_USERNAME`
- `GITHUB_TOKEN`

---

## ⚙️ Script Workflow (Step by Step)

### Step 1: Environment Variables Setup

```bash
export GITHUB_USERNAME="your_github_username"
export GITHUB_TOKEN="your_personal_access_token"
```

---

### Step 2: Command-Line Arguments

The script accepts two arguments:
1. Repository owner (username or organization)
2. Repository name

Example:
```bash
./list-users.sh devops-by-examples python
```

---

### Step 3: GitHub API Call

The script dynamically constructs the API endpoint:
```
https://api.github.com/repos/<owner>/<repo>/collaborators
```

---

### Step 4: JSON Parsing with jq

The API response is parsed using `jq` to extract collaborator usernames.

---

### Step 5: Output

The script prints a clean list of collaborators in the terminal.

---

## ▶️ How to Run the Project

```bash
chmod +x list-users.sh
export GITHUB_USERNAME="your_github_username"
export GITHUB_TOKEN="your_personal_access_token"
./list-users.sh <repo_owner> <repo_name>
```

---

## 📌 Example Output

```
alice-dev
bob-admin
charlie-user
```

---

## 🔍 Real-World Use Cases

- GitHub access audits  
- Employee offboarding verification  
- Security and compliance checks  
- DevOps automation workflows  

---

## 🚀 Key Learnings from This Project

- Secure credential handling using environment variables  
- API-based automation using shell scripting  
- JSON parsing with jq  
- GitHub access management concepts  

---

## 🔮 Future Enhancements

- Filter users by permission level  
- CSV / JSON output support  
- Organization-wide audits  
- Notification integration  

---

## 👤 Author

**Pruthviraj S. Patil**  
DevOps & Cloud Enthusiast  

Project: **2-Repo-Collaborator-Lister**
