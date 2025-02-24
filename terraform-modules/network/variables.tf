variable project_id {
  type        = string  
}

variable region {
    type = string
}

variable vpc_name{
    type = string
}

variable project_name {
  type        = string
  default  = "idaratech"
}


variable gke_subnet_cidrs {
  type = list(string)
  description = "list of gke subnets cidrs"
}

variable app_support_subnet_cidrs {
  type = list(string)
  description = "list of subnet cidrs for app support subnets"
}