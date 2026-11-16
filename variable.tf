variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "sg_name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "sg_tags" {
  type = map
  default = {}
}

variable "ingress_rules" {
  default = {
    ssh = {
    port = 22
    cidr_blocks = ["0.0.0.0/0"]
    }

    http = {
        port = 80
        cidr_blocks = ["0.0.0.0/0"]
    }
  }
}