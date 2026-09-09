output "ssm_document_arn" {
  description = "ARN of the SSM document."
  value       = aws_ssm_document.this.arn
}

output "ssm_document_name" {
  description = "Name of the SSM document."
  value       = aws_ssm_document.this.name
}

output "ssm_parameter_arn" {
  description = "ARN of the SSM parameter."
  value       = aws_ssm_parameter.this.arn
}

output "ssm_parameter_name" {
  description = "Name of the SSM parameter."
  value       = aws_ssm_parameter.this.name
}
