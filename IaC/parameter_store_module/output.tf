output "paramter_names" {
  value = [for param in aws_ssm_parameter.rds_parameters : param.name]
}

output "paramater_values" {
    value = [for param in aws_ssm_parameter.rds_parameters : param.value]
}