/*
 * File: main.tf                                                               *
 * Project: tf-module-ec2-instance                                             *
 * Created Date: Sat Apr 01 2023                                               *
 * Author: Kamalesh Giri                                                       *
 * GitHub: @nerdlaunda                                                         *
 * -----                                                                       *
 * Copyright (c) 2023 Kamalesh Giri                                            *
 * License: MIT License                                                        *
 * -----                                                                       *
 */



resource "aws_instance" "main" {
  ami = var.instance_ami
  instance_type = var.instance_type

  tags = merge(
    local.common_tags,
    var.extra_tags
  )
}