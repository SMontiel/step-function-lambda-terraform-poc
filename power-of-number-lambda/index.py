def lambda_handler(event, context):
    print('Event: ' + str(event))
    return pow(int(event['base']), int(event['exponent']))
