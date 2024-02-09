variable "env" {
  description = "Environment Variable"
  default     = "dev"
}

variable "project_id" {
  description = "The ID of the GCP Project"
  default     = "cool-discipline-186213"
}

variable "region" {
  description = "The Region of the GCP Project"
  default     = "us-central1"
}

variable "zone" {
  description = "The Zone of the GCP Project"
  default     = "us-central1-a"
}

variable "members" {
  type = list(string)
  description = "describe your Members in the standard GCP form user:{email}, serviceAccount: {email}, group: {email}"
  # default = # var.members
}