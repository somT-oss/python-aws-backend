provider "aws" {
    region = "us-east-1"
}


module "rds_module" {
    source = "./rds_module"
    
    db_engine               = "postgres"
    engine_version          = "14.7"
    instance_class          = "db.t3.micro"
    identifier              = "postgres-db" 
    name                    = "database"
    db_username             = "postgres"
    db_password             = "testing321"
    skip_final_snapshot     = true
    publicly_accessible     = true
}

module "parameter_store_module" {
    source = "./parameter_store_module" 

    parameter = {
        "RDS_USERNAME" = module.rds_module.username
        "RDS_PASSWORD" = module.rds_module.password
        "RSD_HOST"     = module.rds_module.host
        "RDS_PORT"     = "5432"
        "RDS_DATABASE" = "users"
    }

}


output "rds_host" {
    value = module.rds_module.host
}

output "rds_identifier" {
    value = module.rds_module.rds_name
}

output "rds_username" {
    value = module.rds_module.username
}

output "rds_password" {
    value = module.rds_module.password

    sensitive = true
}