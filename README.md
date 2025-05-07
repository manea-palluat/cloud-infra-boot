# Cloud Infra-as-Code Boot

Modular AWS infrastructure with Terraform, CI/CD, FinOps dashboards, budget alerts, and cloud-native monitoring.

---

## 🔐 AWS Credentials Configuration

1. Copy the template file:
   cp .env.example .env

2. Fill your own AWS credentials inside `.env`:
   AWS_ACCESS_KEY_ID=...
   AWS_SECRET_ACCESS_KEY=...
   AWS_REGION=eu-east-1

⚠️ VERY IMPORTANT: Do **not** modify `.env.example` ! This is the shared template for all developers.

---

## ▶️ Launch the project

make init     # initialize Terraform
make plan     # preview infrastructure changes
make apply    # apply infrastructure changes

## ⚙️ Setup CI/CD in your fork

1. Go to your fork → Settings → Secrets → Actions

2. Add the following secrets:
   - AWS_ACCESS_KEY_ID
   - AWS_SECRET_ACCESS_KEY
   - AWS_REGION

3. GitHub Actions will now work on push.
