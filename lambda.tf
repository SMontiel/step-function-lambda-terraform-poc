module "long_running_lambda_function" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "my-lambda-1"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"
  timeout       = 120

  source_path = "long-running-lambda/index.py"

  tags = {
    Name = "my-lambda-1"
  }
}

module "lambda_function_2" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "my-lambda-2"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"

  source_path = "lambda_2/index.py"

  tags = {
    Name = "my-lambda-2"
  }
}

module "lambda_function_3" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "my-lambda-3"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"

  source_path = "lambda_3/index.py"

  tags = {
    Name = "my-lambda-3"
  }
}

module "lambda_function_power_of_number" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "power-of-number-lambda"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"

  source_path = "power-of-number-lambda/index.py"

  tags = {
    Name = "power-of-number-lambda"
  }
}

module "lambda_function_random_number_generator" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "random-number-generator-lambda"
  description   = "My awesome lambda function"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"

  source_path = "random-number-generator-lambda/index.py"

  tags = {
    Name = "random-number-generator-lambda"
  }
}
