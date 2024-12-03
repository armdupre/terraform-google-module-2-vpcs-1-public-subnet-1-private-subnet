# module-2-vpcs-1-public-subnet-1-private-subnet/google

## Description
Terraform module for VPC deployment on Google Cloud Platform

## Deployment
This module creates a topology with two virtual private clouds, one having a single public facing subnet and the other having a single private subnet.

## Usage
```tf
module "Vpc" {
	source = "git::https://github.com/armdupre/terraform-google-module-2-vpcs-1-public-subnet-1-private-subnet.git"
	PublicFirewallRuleSourceIpRanges = [ "1.1.1.1/32" ]
}
```