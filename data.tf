/*
 * File: data.tf                                                               *
 * Project: tf-module-ec2-instance                                             *
 * Created Date: Sat Apr 01 2023                                               *
 * Author: Kamalesh Giri                                                       *
 * GitHub: @nerdlaunda                                                         *
 * -----                                                                       *
 * Copyright (c) 2023 Kamalesh Giri                                            *
 * License: MIT License                                                        *
 * -----                                                                       *
 */



locals {
  common_tags = {
    name = var.name
  }
}

