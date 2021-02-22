variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
}

variable "bastionAddressSpace" {
  description = "CIDR Address space for the bastion network"
}

variable "vnet_address_prefixes" {
  description = "Address prefixes for the bastion subnet"
  default     = "10.13.0.0/16"
}

variable "management_subnet_address_prefix" {
  description = "Management subnet that hosts juphost"
  default     = "10.13.0.0/24"
}

variable "zone_subnet_address_prefix" {
  description = "K8S Nodes and Pods"
  default     = "10.13.0.1/24"
}

/*
extra_vnet_address_prefixes, vNet CIDR, 10.13.0.0/16

extra_management_subnet_address_prefix, Management subnet that hosts juphost, 10.13.0.0/24

extra_zone_subnet_address_prefix, K8S Nodes and PODs subnet ; Azure CNI used, 10.13.1.0/24

extra_zone_name, K8S Nodes and PODs subnet ; Azure CNI used, nodesandpods

extra_service_cidr, K8S internal service subnet, 10.200.0.0/24

extra_dns_service_ip, K8S internal DNS service subnet, 10.200.0.10

extra_k8s_version, K8S version, 1.19.0

extra_admin_username, K8S admin user of jumphost, PawnedAdmin

extra_admin_ssh_crt, K8S public key of admin user

extra_admin_ssh_crt, K8S VMSS / node VM size

extra_sp_client_id, Service Principal / client ID

extra_sp_client_secret, Service Principal / client Secret

*/
