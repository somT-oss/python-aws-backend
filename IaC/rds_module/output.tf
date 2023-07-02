output "arn" {
    description = "db arn"

    value = aws_db_instance.rds_database.arn
}

output "rds_name" {
    description = "db password"

    value = aws_db_instance.rds_database.identifier
}

output "username" {
    description = "db username"

    value = aws_db_instance.rds_database.username
}

output "host" {
    description = "db host"

    value = aws_db_instance.rds_database.endpoint
}

output "password" {
    description = "db password"

    value = aws_db_instance.rds_database.password
}