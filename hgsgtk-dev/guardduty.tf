module "guardduty-us-east-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.us-east-1
  }
}

module "guardduty-us-east-2" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.us-east-2
  }
}

module "guardduty-us-west-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.us-west-1
  }
}

module "guardduty-us-west-2" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.us-west-2
  }
}

module "guardduty-ap-south-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.ap-south-1
  }
}

module "guardduty-ap-northeast-2" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.ap-northeast-2
  }
}

module "guardduty-ap-southeast-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.ap-southeast-1
  }
}

module "guardduty-ap-southeast-2" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.ap-southeast-2
  }
}

module "guardduty-ap-northeast-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.ap-northeast-1
  }
}

module "guardduty-ca-central-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.ca-central-1
  }
}

module "guardduty-eu-central-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.eu-central-1
  }
}

module "guardduty-eu-west-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.eu-west-1
  }
}

module "guardduty-eu-west-2" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.eu-west-2
  }
}

module "guardduty-eu-west-3" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.eu-west-3
  }
}

module "guardduty-eu-north-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.eu-north-1
  }
}

module "guardduty-sa-east-1" {
  source = "../modules/guardduty"

  aws_account_id = var.aws_account_id

  providers = {
    aws = aws.sa-east-1
  }
}
