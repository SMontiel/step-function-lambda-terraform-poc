# step-function-lambda-terraform-poc

## First steps

1. Install Terraform
2. (Optional) Install Localstack, requires to do configuration to run properly
3. Set your credentials:
   ``` bash
   export AWS_ACCESS_KEY_ID=your-key-id
   export AWS_SECRET_ACCESS_KEY=your-secret-access-key
   ```
4. Create a copy of `terraform.tfvars.example` to `terraform.tfvars`
5. Create the infra:
   ``` bash
   terraform init
   terraform plan
   terraform apply
   ```
6. After testing it, destroy the resources, we don't want to spend money! ;)
   ``` bash
   terraform destroy
   ```

## Lambda

``` bash
aws lambda list-functions
aws lambda invoke --function-name <<lambda-name>> --cli-binary-format raw-in-base64-out --payload '<<payload>>' /tmp/output.txt && cat /tmp/output.txt
```

## Step Function

``` bash
aws stepfunctions list-executions --state-machine-arn <<state-machine-arn>>
aws stepfunctions start-execution --state-machine-arn <<state-machine-arn>>
aws stepfunctions get-execution-history --execution-arn <<execution-arn>>
```

### Diagram

``` mermaid
graph TD
  id1([START]) --> long-running-lambda
  long-running-lambda --> random-number-generator-lambda-config
  random-number-generator-lambda-config --> random-number-generator-lambda
  random-number-generator-lambda --> id2{send-notification-if-less-than-5}
  id2 -->|less than 5| send-multiple-notification
  id2 -->|greater than or equals to 5| power-of-three-lambda
  power-of-three-lambda --> id3([END])
  send-multiple-notification --> id3
```

## Logs

``` bash
aws logs describe-log-groups
aws logs describe-log-streams --log-group-name "<<log-group-name>>" --order-by 'LastEventTime'
aws logs get-log-events --log-group-name "<<log-group-name>>" --log-stream-name "<<log-stream-name>>"
```
