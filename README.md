# tf-guardduty
Terraform sample code to enable and notify GuardDuty for all regions

## Getting Started

- install `tfenv` to switch terraform version.

```
tfenv install 0.13.5
tfenv use 0.13.5
```

- initialize

```
terraform init
```

- setup remote backend

Create an S3 bucket to store the tfstate

## apply

```
terraform apply -var="aws_account_id=<your-account>"
```

## ToDo

- AWS Chatbot is not included in this code because it is not terraform compliant.

See also https://github.com/hashicorp/terraform-provider-aws/issues/12304
