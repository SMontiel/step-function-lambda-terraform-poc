variable "name" {
  description = "the name of your project, e.g. \"demo\""
}

variable "environment" {
  description = "the name of your environment, e.g. 'test'"
  default     = "test"
}

variable "aws-region" {
  type        = string
  description = "AWS region in which resources are created"
  default     = "us-east-1"
}

variable "phone_number_for_notification" {
  type        = string
  description = "Valid Handphone number for notification"
  default     = ""
}
