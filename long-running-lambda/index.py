import time


def lambda_handler(event, context):
    print('Event: ' + str(event))
    start = current_milli_time()
    print("Printed immediately: " + str(start))
    time.sleep(60)
    print("Printed after 60 secs: " + str(current_milli_time() - start))

    return {
        'message': 'Hello world from Long Running Lambda!'
    }


def current_milli_time():
    return round(time.time() * 1000)


if __name__ == '__main__':
    print(lambda_handler({}, {}))
