resource "aws_ssm_parameter" "rds_parameters" {
    for_each = var.paramaters

    name = each.key
    description = "Parameter for ${each.key}"
    type = "String"
    value = each.value
}