#--------------------------------------------------
# Provider
#--------------------------------------------------

# リソース作成するデフォルトリージョン
provider "aws" {
  version = "~> 3.18.0"
  region  = var.region
}

# 全リージョン操作する際のprovider設定

# 以下のリージョンは有効化しない限り管理対象にする必要はない
# af-south-1 アフリカ (ケープタウン)
# ap-east-1 アジアパシフィック (香港)
# eu-south-1 欧州 (ミラノ)
# me-south-1 中東 (バーレーン)
# See also https://docs.aws.amazon.com/general/latest/gr/rande-manage.html

provider "aws" {
  region = "us-east-1"
  alias  = "us-east-1"
}

provider "aws" {
  region = "us-east-2"
  alias  = "us-east-2"
}

provider "aws" {
  region = "us-west-1"
  alias  = "us-west-1"
}

provider "aws" {
  region = "us-west-2"
  alias  = "us-west-2"
}

provider "aws" {
  region = "ap-south-1"
  alias  = "ap-south-1"
}

provider "aws" {
  region = "ap-northeast-2"
  alias  = "ap-northeast-2"
}

provider "aws" {
  region = "ap-southeast-1"
  alias  = "ap-southeast-1"
}

provider "aws" {
  region = "ap-southeast-2"
  alias  = "ap-southeast-2"
}

provider "aws" {
  region = "ap-northeast-1"
  alias  = "ap-northeast-1"
}

provider "aws" {
  region = "ca-central-1"
  alias  = "ca-central-1"
}

provider "aws" {
  region = "eu-central-1"
  alias  = "eu-central-1"
}

provider "aws" {
  region = "eu-west-1"
  alias  = "eu-west-1"
}

provider "aws" {
  region = "eu-west-2"
  alias  = "eu-west-2"
}

provider "aws" {
  region = "eu-west-3"
  alias  = "eu-west-3"
}

provider "aws" {
  region = "eu-north-1"
  alias  = "eu-north-1"
}

provider "aws" {
  region = "sa-east-1"
  alias  = "sa-east-1"
}
