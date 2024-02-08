variable "env" {
  type        = string
  description = "production / staging / development"
  validation {
    condition     = can(regex("^(prod|stag|dev)$", var.env))
    error_message = "invalid env"
  }
}

resource "google_storage_bucket" "validation_example" {
  name     = "my-validation-bkt-${var.env}"
  location = "us-central1"
}