# module-2-vpcs-1-public-subnet-1-private-subnet/google

## Description
Terraform module for VPC deployment on Google Cloud Platform

## Deployment
This module creates a topology with two virtual private clouds, each having a single public facing subnet and a single private subnet.

## Usage
```tf
module "Vpc" {
	source = "armdupre/module-2-vpcs-1-public-subnet-1-private-subnet/google"
	PublicFirewallRuleSourceIpRanges = [ "1.1.1.1/32" ]
}
```