variable "PublicFirewallRulePorts" {
	default = [
		"22",
		"80",
		"443",
		"3389"
		"30422"
	]
	type = list(string)
}

variable "PublicFirewallRuleSourceIpRanges" {
	description = "List of IP Addresses /32 or IP CIDR ranges connecting inbound to App"
	type = list(string)
}

variable "RegionName" {
	default = "us-central1"
	description = "Geographical location where resources can be hosted" 
	type = string
}

variable "Tag" {
	default = "gcp"
	type = string
}

variable "UserLoginTag" {
	default = "terraform"
	description = "Login ID tag of user creating the deployment"
	type = string
}

variable "UserProjectTag" {
	default = "example"
	description = "Project tag of user creating the deployment"
	type = string
}