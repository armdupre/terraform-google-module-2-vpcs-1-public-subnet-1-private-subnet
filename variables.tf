variable "InstanceId" {
	default = "vpc"
	description = "Id of the instance of this module that ensures uniqueness"
	type = string
}

variable "PrivateVpcNetworkMtu" {
	default = 1460
	description = "Maxium Transmission Unit associated with the private vpc network"
	type = number
	validation {
		condition = contains([1460, 1500, 8896], var.PrivateVpcNetworkMtu)
		error_message = <<EOF
PrivateVpcNetworkMtu must be one of the following values:
	1460, 1500, 8896
		EOF
	}
}

variable "PublicFirewallRulePorts" {
	default = [
		"22",
		"80",
		"443",
		"3389",
		"30422"
	]
	type = list(string)
}

variable "PublicFirewallRuleSourceIpRanges" {
	description = "List of IP Addresses /32 or IP CIDR ranges connecting inbound to App"
	type = list(string)
}

variable "PublicVpcNetworkMtu" {
	default = 1460
	description = "Maxium Transmission Unit associated with the public vpc network"
	type = number
	validation {
		condition = contains([1460, 1500, 8896], var.PublicVpcNetworkMtu)
		error_message = "PublicVpcNetworkMtu must be one of (1460 | 1500 | 8896) values."
	}
}

variable "RegionName" {
	default = "us-central1"
	description = "Geographical location where resources can be hosted" 
	type = string
}

variable "Tag" {
	default = "gcp"
	description = "App ID tag of application using the deployment"
	type = string
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
	validation {
		condition = length(var.UserLoginTag) >= 4
		error_message = "UserLoginTag minimum length must be >= 4."
	}
}

variable "UserProjectTag" {
	default = "module"
	description = "Project tag of user creating the deployment"
	type = string
}

variable "Version" {
	default = "11-20"
	description = "Versioning of the application using the deployment"
	type = string
}