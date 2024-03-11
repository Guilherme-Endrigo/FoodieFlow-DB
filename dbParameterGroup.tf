resource "aws_db_parameter_group" "FoodieFlowDBParameters" {
  name   = "ParameterDB-${var.projectName}"
  family = "postgres13"

  parameter {
    name  = "log_connections"
    value = "1"
  }

  parameter {
    name  = "log_disconnections"
    value = "1"
  }
}