output "lambda_1_name" {
  description = "Name of Lambda 1"
  value       = module.lambda_function_1.lambda_function_name
}

output "lambda_1_arn" {
  description = "ARN of Lambda 1"
  value       = module.lambda_function_1.lambda_function_arn
}

output "lambda_2_name" {
  description = "Name of Lambda 2"
  value       = module.lambda_function_2.lambda_function_name
}

output "lambda_2_arn" {
  description = "ARN of Lambda 2"
  value       = module.lambda_function_2.lambda_function_arn
}

output "lambda_3_name" {
  description = "Name of Lambda 3"
  value       = module.lambda_function_3.lambda_function_name
}

output "lambda_3_arn" {
  description = "ARN of Lambda 3"
  value       = module.lambda_function_3.lambda_function_arn
}

output "lambda_power_of_number_name" {
  description = "Name of Power of Number Lambda"
  value       = module.lambda_function_power_of_number.lambda_function_name
}

output "lambda_power_of_number_arn" {
  description = "ARN of Power of Number Lambda"
  value       = module.lambda_function_power_of_number.lambda_function_arn
}

output "lambda_random_number_generator_name" {
  description = "Name of Random Number Generator Lambda"
  value       = module.lambda_function_random_number_generator.lambda_function_name
}

output "lambda_random_number_generator_arn" {
  description = "ARN of Random Number Generator Lambda"
  value       = module.lambda_function_random_number_generator.lambda_function_arn
}

output "lambda_random_number_generator_log_group_name" {
  value = module.lambda_function_random_number_generator.lambda_cloudwatch_log_group_name
}

output "sfn_state_machine" {
  value = aws_sfn_state_machine.sfn_state_machine.arn
}

output "sfn_cw_log_group_name" {
  value = aws_cloudwatch_log_group.log_group_for_sfn.name
}

output "sfn_cw_log_group_arn" {
  value = aws_cloudwatch_log_group.log_group_for_sfn.arn
}
