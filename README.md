# module-2-vpcs-1-public-subnet-1-private-subnet/google

## Description
Terraform module for VPC deployment on Google Cloud Platform

## Deployment
This module creates a topology with two virtual private clouds, one having a single public facing subnet and the other having a single private subnet.

## Usage
```tf
module "Vpc" {
	source = "armdupre/module-2-vpcs-1-public-subnet-1-private-subnet/google"
	PublicFirewallRuleSourceIpRanges = [ "1.1.1.1/32" ]
}
```