def lambda_handler(event, context):
    print('Event: ' + str(event))
    return {
        'message': 'Hello world from Lambda 2!'
    }
