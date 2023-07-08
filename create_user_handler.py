import json

def create_users(event, context):
    
    user_info = {
        "message": "User has been created"
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(user_info)
    }
    return response