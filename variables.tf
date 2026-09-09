variable "document_name" {
  description = "Name of the SSM document."
  type        = string
  default     = "management-systemsmanager-document"
}

variable "document_type" {
  description = "Type of the SSM document."
  type        = string
  default     = "Command"
}

variable "document_format" {
  description = "Format of the SSM document."
  type        = string
  default     = "JSON"
}

variable "document_content" {
  description = "JSON or YAML content for the SSM document."
  type        = string
  default     = "{\"schemaVersion\":\"2.2\",\"description\":\"Run a shell command\",\"mainSteps\":[{\"action\":\"aws:runShellScript\",\"name\":\"runShellScript\",\"inputs\":{\"runCommand\":[\"echo Hello World\"]}}]}"
}

variable "parameter_name" {
  description = "Name of the SSM parameter."
  type        = string
  default     = "/management/systemsmanager/example"
}

variable "parameter_type" {
  description = "Type of the SSM parameter."
  type        = string
  default     = "String"
}

variable "parameter_value" {
  description = "Value stored in the SSM parameter."
  type        = string
  sensitive   = true
  default     = "example-value"
}

variable "parameter_description" {
  description = "Description for the SSM parameter."
  type        = string
  default     = "Example Systems Manager parameter"
}

variable "tags" {
  description = "Tags to apply to Systems Manager resources."
  type        = map(string)
  default = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}
