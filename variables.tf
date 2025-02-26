variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "key_name" {
  description = "Name of the SSH key pair to access instances"
  default     = "my-key"
}

variable "vm_list" {
  type = map(object({
    ami           = string
    instance_type = string
    os            = string
  }))

  default = {
    "redhat-1"  = { ami = "ami-0dfcb1ef8550277af", instance_type = "t2.micro", os = "RedHat" }
    "redhat-2"  = { ami = "ami-0dfcb1ef8550277af", instance_type = "t2.micro", os = "RedHat" }
    "redhat-3"  = { ami = "ami-0dfcb1ef8550277af", instance_type = "t2.micro", os = "RedHat" }
    "redhat-4"  = { ami = "ami-0dfcb1ef8550277af", instance_type = "t2.micro", os = "RedHat" }
    "redhat-5"  = { ami = "ami-0dfcb1ef8550277af", instance_type = "t2.micro", os = "RedHat" }

    "linux-1"   = { ami = "ami-09eb0e7d7cf0eebb0", instance_type = "t2.micro", os = "Linux" }
    "linux-2"   = { ami = "ami-09eb0e7d7cf0eebb0", instance_type = "t2.micro", os = "Linux" }
    "linux-3"   = { ami = "ami-09eb0e7d7cf0eebb0", instance_type = "t2.micro", os = "Linux" }
    "linux-4"   = { ami = "ami-09eb0e7d7cf0eebb0", instance_type = "t2.micro", os = "Linux" }
    "linux-5"   = { ami = "ami-09eb0e7d7cf0eebb0", instance_type = "t2.micro", os = "Linux" }

    "centos-1"  = { ami = "ami-0b898040803850657", instance_type = "t2.micro", os = "CentOS" }
    "centos-2"  = { ami = "ami-0b898040803850657", instance_type = "t2.micro", os = "CentOS" }
    "centos-3"  = { ami = "ami-0b898040803850657", instance_type = "t2.micro", os = "CentOS" }
    "centos-4"  = { ami = "ami-0b898040803850657", instance_type = "t2.micro", os = "CentOS" }
    "centos-5"  = { ami = "ami-0b898040803850657", instance_type = "t2.micro", os = "CentOS" }

    "ubuntu-1"  = { ami = "ami-033b95fb8079dc481", instance_type = "t2.micro", os = "Ubuntu" }
    "ubuntu-2"  = { ami = "ami-033b95fb8079dc481", instance_type = "t2.micro", os = "Ubuntu" }
    "ubuntu-3"  = { ami = "ami-033b95fb8079dc481", instance_type = "t2.micro", os = "Ubuntu" }
    "ubuntu-4"  = { ami = "ami-033b95fb8079dc481", instance_type = "t2.micro", os = "Ubuntu" }
    "ubuntu-5"  = { ami = "ami-033b95fb8079dc481", instance_type = "t2.micro", os = "Ubuntu" }
  }
}
