resource "aws_ssm_parameter" "rds_parameters" {
    for_each = var.parameters

    name = each.key
    description = "Parameter for ${each.key}"
    type = "String"
    value = each.value
}