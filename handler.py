import json
import boto3
import os
from pprint import pprint
from pymongo.mongo_client import MongoClient
from pymongo.server_api import ServerApi



def connect():
    MONGO_USERNAME = os.getenv("MONGO_USERNAME")
    MONGO_PASSWORD = os.getenv("MONGO_PASSWORD")
    URI = f"mongodb+srv://{MONGO_USERNAME}:{MONGO_PASSWORD}@cluster0.azspf3u.mongodb.net/?retryWrites=true&w=majority"
    client = None
    try:
        client = MongoClient(URI, server_api=ServerApi('1'))
        return client
    except Exception as e:
        print(e)
        return client


def hello(event, context):
    body = {
        "message": "Hello, Serverless!"
    }

    response = {
        "statusCode": 200,
        "body": json.dumps(body)
    }

    return response

