import random


def lambda_handler(event, context):
    print('Event: ' + str(event))
    min = event['min'] if (event['min'] is None) else 1
    max = event['max'] if (event['max'] is None) else 10

    return random.randint(min, max)
