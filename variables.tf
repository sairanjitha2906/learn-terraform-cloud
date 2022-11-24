variable "region" {
  default = "us-central"
}
variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "e2.micro"
}

variable "instance_name" {
  default = "terraform-cloud-training"
}

