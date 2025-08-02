variable "name" {
  type = string
}

variable "description" {
  type = string
}

variable "visibility" {
  type = string

  validation {
    condition     = contains(["public", "private"], var.visibility)
    error_message = "Value has to be either public or private"
  }

  default = "private"
}
