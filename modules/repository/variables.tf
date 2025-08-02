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

variable "topics" {
  type = set(string)

  default = []
}

variable "issues" {
  type = bool

  default = false
}
