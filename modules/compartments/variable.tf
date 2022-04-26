## provider 
# Root compartment OICD
variable "root_compartment_ocid" { type = string }

## Comapartment
variable "compartment_name" {
  type        = string
  description = "Compartment name"
  default     = "instances-cluster"
}

variable "compartment_description" {
  type        = string
  description = "Compartment description"
  default     = "instances cluster compartment"
}