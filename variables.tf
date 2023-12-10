variable "domain" {
  type = string
}

variable "cpu_request" {
  type    = string
  default = "10m"
}

variable "memory_request" {
  type    = string
  default = "256Mi"
}

variable "memory_limit" {
  type    = string
  default = "512Mi"
}

variable "media_size" {
  type        = string
  default     = "100Gi"
  description = "Size of the media PVC"
}