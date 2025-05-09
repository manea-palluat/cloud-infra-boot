# 🚀 Cloud Infra-as-Code Boot

![Terraform](https://img.shields.io/badge/Terraform-✔️-623CE4?logo=terraform)
![CI](https://github.com/manea-palluat/cloud-infra-boot/actions/workflows/ci.yml/badge.svg)

Modular AWS infrastructure with Terraform, CI/CD, FinOps dashboards, budget alerts, and cloud-native monitoring.

---

## 🔐 AWS Credentials Configuration

1. Copy the template file:
   ```bash
   cp .env.example .env
   ```

2. Fill your own AWS credentials inside `.env`:
   ```
   AWS_ACCESS_KEY_ID=...
   AWS_SECRET_ACCESS_KEY=...
   AWS_REGION=eu-west-1
   ```

⚠️ **VERY IMPORTANT:** Do **not** modify `.env.example`!  
This file is the shared template for all developers. Always create and edit your local `.env`.

---

## ▶️ Launch the Project Locally

```bash
make init # initialize Terraform
make plan # preview infrastructure changes
make apply # apply infrastructure changes
make destroy # clean up all infrastructure
```

---

## ⚙️ Setup CI/CD in Your Fork

1. Go to your fork → **Settings** → **Secrets and variables** → **Actions**

2. Add the following repository secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `AWS_REGION`

3. Push any change → GitHub Actions will automatically validate your Terraform code.

---

## 💡 Features

✅ Modular AWS resources (S3, CloudFront, EC2, etc.)  
✅ Docker-based Terraform environment  
✅ Makefile for easy commands  
✅ Automated CI/CD with GitHub Actions  
✅ Secure credentials management  
✅ Ready for FinOps and monitoring integration

---

## 📣 Coming Next

- Add static website hosting (S3 + CloudFront + HTTPS)  
- Integrate CloudWatch monitoring and alarms  
- Enable FinOps dashboards (Athena + QuickSight)  
- Add Slack/email budget alerts via SNS + Lambda

---

## 🏗 Example Use Case

> Quickly bootstrap a reusable, secure, and automated AWS infrastructure  
for personal projects, client demos, or cloud training labs.

---

## 🙌 Contributing

Feel free to fork, improve, and open pull requests!