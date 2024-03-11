output "db_connect_string" {
  description = "PostgreSQL database connection string"
  value       = "postgresql://${aws_db_instance.FoodieFlowRds.username}:${aws_db_instance.FoodieFlowRds.password}@${aws_db_instance.FoodieFlowRds.address}:${aws_db_instance.FoodieFlowRds.port}/${aws_db_instance.FoodieFlowRds.db_name}"
  sensitive   = true
}
