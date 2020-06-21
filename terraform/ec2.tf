data "aws_ami" "ubuntu"{
  most_recent = true

  filter{
    name = "name"
    values = ["IaaSWeek-${var.hash_commit}"]
  }

  owners = [""] # AMI ID
}

resource "aws_instance" "web"{
  ami = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "my-first-ami"
  }
}

resource "aws_instance" "west"{
  provider = aws.west
  ami = "ami-06d51e91cea0dac8d"
  instance_type = "t2.micro"

  tags = {
    Name = "my-second-ami"
  }
}
