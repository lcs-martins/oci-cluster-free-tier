## provider 
# Root compartment OICD
variable "compartment_ocid" { type = string }

## Network

# VNC
variable "vcn_cidr_block" {
  type        = string
  description = "VCN cidr block"
  default     = "10.1.0.0/16"
}

variable "vcn_display_name" {
  type        = string
  description = "VCN display name label"
  default     = "clusterVCN"
}

variable "vcn_dns_label" {
  type        = string
  description = "VCN dns label"
  default     = "clustervcn"
}

# Subnet
variable "sbnet_cidr_block" {
  type        = string
  description = "Subnet cidr block"
  default     = "10.1.20.0/24"
}

variable "sbnet_display_name" {
  type        = string
  description = "Subnet display name"
  default     = "clusterSubnet"
}

variable "sbnet_dns_label" {
  type        = string
  description = ""
  default     = "clustersubnet"
}

# Internet Gateway
variable "ig_display_name" {
  type        = string
  description = "Internet Gateway display name"
  default     = "clusterIG"
}

# Route Table
variable "rt_display_name" {
  type        = string
  description = "Route Table display name"
  default     = "clusterRouteTable"
}

variable "rt_cidr_block_destination" {
  type        = string
  description = "Route Table cidr block destination"
  default     = "0.0.0.0/0"
}

variable "rt_cidr_block_destination_type" {
  type        = string
  description = "Route Table cidr block destination type"
  default     = "CIDR_BLOCK"
}

# Security List
variable "sl_display_name" {
  type        = string
  description = "Security List"
  default     = "clusterSecurityList"
}

variable "egress_security_rules" {
  type        = map(any)
  description = "Security List egress security rules"
  default = {
    default = {
      protocol    = "6"
      destination = "0.0.0.0/0"
    }
  }
}

variable "ingress_security_rules" {
  type        = map(any)
  description = "Security List ingress security rules"
  # default = 
}