variable "db_engine" {
    description = "database engine"

    type = string
}

variable "engine_version" {
    description = "database engine description"

    type = string
}

variable "instance_class" {
    description = "type of instance used for the creation of the db"

    type = string
    default = "db.t3.micro"
}

variable "name" {
    description = "the name of your database"

    type =  string
}

variable "db_password" {}

variable "db_username" {
    description = "usernaame of your database"

    type =  string
}

variable "skip_final_snapshot" {
  description = "skip final shot"

  type = bool
}

variable "identifier" {
    description = "database identifier"

    type = string
}

variable "publicly_accessible" {
    description = "is the database publicily available"
    type = bool

    default = true
}