resource "aws_db_instance" "rds_database" {
  allocated_storage    = 10
  engine               = var.db_engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  identifier           = var.identifier 
  username             = var.db_username
  password             = var.db_password
  skip_final_snapshot  = var.skip_final_snapshot
  publicly_accessible = var.publicly_accessible
}

