/*
 * File: variable.tf                                                           *
 * Project: tf-module-ec2-instance                                             *
 * Created Date: Sat Apr 01 2023                                               *
 * Author: Kamalesh Giri                                                       *
 * GitHub: @nerdlaunda                                                         *
 * -----                                                                       *
 * Copyright (c) 2023 Kamalesh Giri                                            *
 * License: MIT License                                                        *
 * -----                                                                       *
 */



variable "instance_ami" {
  type = string
  default = null
  description = "Valid AWS instance AMI id. Eg: ami-1234567890"

  validation {
    condition     = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_type" {
  type = string
  default = null
  description = "Valid AWS EC2 instace typw. Eg: t2.micro"
}

variable "extra_tags" {
  type = map
  description = "Map of tags"
  default = null
}

variable "project" {
  type = string
  description = "Name of the project to which this instance is related to."
  default = null
}

variable "environment" {
  type = string
  description = "Name of the environment to which this project belongs to."
  default = null
}

variable "name" {
  type = string
}
