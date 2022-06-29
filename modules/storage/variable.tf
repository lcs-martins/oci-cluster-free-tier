## provider 
# Compartment OICD
variable "compartment_ocid" { type = string }

variable "bucket_name" { type = string }

variable "bucket_access_type" { 
  type = string 
  default = "NoPublicAccess"  
}