# step-function-lambda-terraform-poc

## Lambda

``` bash
aws lambda list-functions
aws lambda invoke --function-name <<lambda-name>> --cli-binary-format raw-in-base64-out --payload '<<payload>>' /tmp/output.txt && cat /tmp/output.txt
```

## Step Function

``` bash
aws stepfunctions list-executions --state-machine-arn <<state-machine-arn>>
aws stepfunctions start-execution --state-machine-arn <<state-machine-arn>>
```

## Logs

``` bash
aws logs describe-log-streams --log-group-name "<<log-group-name>>" --order-by 'LastEventTime'
aws logs get-log-events --log-group-name "<<log-group-name>>" --log-stream-name "<<log-stream-name>>"
```
