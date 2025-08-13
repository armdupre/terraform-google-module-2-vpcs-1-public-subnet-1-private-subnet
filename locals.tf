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
	IapFirewallRuleName = "${local.Preamble}-iap-firewall-rule"
	IapFirewallRuleDirection = "INGRESS"
	IapFirewallRulePriority = "1001"
	IapFirewallRulePorts = [
		"22",
		"3389"
	]
	IapFirewallRuleNetworkTargetTags = [
		"${local.Tag}-app",
		"${local.Tag}-agent"
	]
	IapFirewallRuleSourceIpRanges = [
		"35.235.240.0/20"
	]
	InstanceId = var.InstanceId
	Preamble = replace("${local.UserLoginTag}-${local.UserProjectTag}-${local.Tag}-${local.Version}-${local.InstanceId}", "_", "-")
	PrivateVpcNetworkName = "${local.Preamble}-private-vpc-network"
	PrivateVpcNetworkMtu = var.PrivateVpcNetworkMtu
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
	PublicVpcNetworkMtu = var.PublicVpcNetworkMtu
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