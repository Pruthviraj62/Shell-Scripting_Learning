This explains how to enable cron.

Example: cron/README.md
# Cron Configuration – InfraWatch

This project uses a cron job to automate daily AWS resource reporting.

## Schedule
- Runs every day at **9:00 AM**

## How to Install Cron Job

1. Open cron editor:
   ```bash
   crontab -e


2.Copy the cron entry from:

  cron/infra-watch.cron


3.Paste and save.
