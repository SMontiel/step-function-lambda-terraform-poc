def lambda_handler(event, context):
    return pow(int(event['base']), int(event['exponent']))
