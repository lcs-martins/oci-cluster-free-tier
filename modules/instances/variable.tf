## provider 
# Compartment OICD
variable "compartment_ocid" { type = string }
# Tenancy id
variable "tenancy_ocid" { type = string }

## VM

variable  "subnet_id" { type = string }

variable "ssh_public_key" {
  type = string
  description = "Path or inline pub ssh key"
  default = ""
}

# Optional

# default = VM.Standard.A1.Flex
# free tier shapes: "VM.Standard.A1.Flex" or "VM.Standard.E2.1.Micro"
variable "instance_shape" {
  type        = string
  description = "More about shapes < https://docs.oracle.com/en-us/iaas/Content/Compute/References/computeshapes.htm >"
  default     = "VM.Standard.A1.Flex"
}

# default = 1
# free tier ocpus: 4 núcleos Ampere A1 based on Arm or 2 AMD based Compute VMs with 1/8 OCPU 
variable "instance_ocpus" { default = 1 }

# default = 6
# free tier ocpus: 24 GB, can be used in 4 VMs with 6 GB
variable "instance_shape_config_memory_in_gbs" { default = 6 }

# More about recources always free here < https://www.oracle.com/cloud/free/#always-free >