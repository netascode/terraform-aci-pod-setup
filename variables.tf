variable "id" {
  description = "Pod ID. Minimum value: 1. Maximum value: 255."
  type        = number

  validation {
    condition     = var.id >= 1 && var.id <= 255
    error_message = "Minimum value: 1. Maximum value: 255."
  }
}

variable "tep_pool" {
  description = "TEP pool."
  type        = string
}
