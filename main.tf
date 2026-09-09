resource "aws_ssm_document" "this" {
  name            = var.document_name
  document_type   = var.document_type
  document_format = var.document_format
  content         = var.document_content

  tags = var.tags
}

resource "aws_ssm_parameter" "this" {
  name        = var.parameter_name
  type        = var.parameter_type
  value       = var.parameter_value
  description = var.parameter_description
  overwrite   = true

  tags = var.tags
}
