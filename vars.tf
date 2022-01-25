variable "bice_vpc_id" {
  default = "biceTestVpcId"
}

variable "bice_name_application" {
  default = "biceTestApp"
}

variable "bice_environment" {
  default = "biceTestEnv"
}

variable "bice_solution_stack_name" {
  type = string
  default = "64bit Amazon Linux 2 v5.4.9 running Node.js 14"
}
