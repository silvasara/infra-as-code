provider "aws"{
  region = "us-east-1"
  version = "~> 2.0"
}

provider "aws"{
  alias = "west"
  region = "us-west-2"
  version = "~> 2.0"
}

terraform{
  backend "s3"{
    bucket = "terraform-sara"
    key = "terraform.tfstate"
    region = "sa-east-1"
  }
}
