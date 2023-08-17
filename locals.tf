locals {
	ComputeFirewallRuleName = "${local.Preamble}-compute-firewall-rule"
	ComputeFirewallRuleDirection = "INGRESS"
	ComputeFirewallRulePriority = "1002"
	ComputeFirewallRulePorts = [
		"7443"
	]
	ComputeFirewallRuleNetworkTargetTags = [
		"cyperf-license"
	]
	ComputeFirewallRuleSourceIpRanges = [
		"0.0.0.0/0"
	]
	ConsoleFirewallRuleName = "${local.Preamble}-console-firewall-rule"
	ConsoleFirewallRuleDirection = "INGRESS"
	ConsoleFirewallRulePriority = "1001"
	ConsoleFirewallRulePorts = [
		"22"
	]
	ConsoleFirewallRuleNetworkTargetTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	ConsoleFirewallRuleSourceIpRanges = [
		"35.190.247.0/24",
		"35.191.0.0/16",
		"64.233.160.0/19",
		"66.102.0.0/20",
		"66.249.80.0/20",
		"72.14.192.0/18",
		"74.125.0.0/16",
		"108.177.8.0/21",
		"108.177.96.0/19",
		"130.211.0.0/22",
		"172.217.0.0/19",
		"172.217.32.0/20",
		"172.217.128.0/19",
		"172.217.160.0/20",
		"172.217.192.0/19",
		"172.253.56.0/21",
		"172.253.112.0/20",
		"173.194.0.0/16",
		"209.85.128.0/17",
		"216.58.192.0/19",
		"216.239.32.0/19"
	]
	ControlFirewallRuleName = "${local.Preamble}-control-firewall-rule"
	ControlFirewallRuleDirection = "INGRESS"
	ControlFirewallRulePriority = "1003"
	ControlFirewallRulePorts = "all"
	ControlFirewallRuleSourceTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	ControlFirewallRuleTargetTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	InstanceId = var.InstanceId
	Preamble = "${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.Version}-${local.InstanceId}"
	PrivateVpcNetworkName = "${local.Preamble}-private-vpc-network"
	PrivateSubnetName = "${local.Preamble}-private-subnet"
	PrivateSubnetIpRange = "10.0.2.0/24"
	PrivateFirewallRuleName = "${local.Preamble}-private-firewall-rule"
	PrivateFirewallRuleDirection = "INGRESS"
	PrivateFirewallRulePriority = "1000"
	PrivateFirewallRulePorts = "all"
	PrivateFirewallRuleSourceIpRanges = [
		"10.0.2.0/24",
		"10.0.3.0/24"
	]
	PrivateFirewallRuleSourceTags = [
		"${local.Tag}-agent"
	]
	PrivateFirewallRuleTargetTags = [
		"${local.Tag}-agent"
	]
	PublicVpcNetworkName = "${local.Preamble}-public-vpc-network"
	PublicSubnetName = "${local.Preamble}-public-subnet"
	PublicSubnetIpRange = "10.0.10.0/24"
	PublicFirewallRuleName = "${local.Preamble}-public-firewall-rule"
	PublicFirewallRuleDirection = "INGRESS"
	PublicFirewallRulePriority = "1000"
	PublicFirewallRulePorts = var.PublicFirewallRulePorts
	PublicFirewallRuleNetworkTargetTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	PublicFirewallRuleSourceIpRanges = var.PublicFirewallRuleSourceIpRanges
	RegionName = var.RegionName
	Tag = var.Tag
	UserLoginTag = var.UserLoginTag
	UserProjectTag = var.UserProjectTag
	Version = var.Version
}