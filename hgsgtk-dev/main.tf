terraform {
  required_version = ">= 0.13.5"

  backend "s3" {
    bucket = "hgsgtk-terraform-state"
    key    = "_/guardduty"
    region = "ap-northeast-1"
  }
}
