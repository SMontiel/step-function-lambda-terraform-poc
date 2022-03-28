def lambda_handler(event, context):
    print('Event: ' + str(event))
    return {
        'message': 'Hello world from Lambda 2!'
    }


if __name__ == '__main__':
    lambda_handler({}, {})
