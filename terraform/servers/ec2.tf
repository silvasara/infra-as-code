data "aws_ami" "ubuntu"{
    most_recent = true

    filter{
        name = "name"
        values = ["IaaSWeek-${var.hash_commit}"]
    }

    owners = [""] # ID
}

resource "aws_instance" "web"{
    count = var.servers
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"

    tags = {
        Name = "my-first-ami"
    }
}

