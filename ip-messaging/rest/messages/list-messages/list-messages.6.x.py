# Download the Python helper library from twilio.com/docs/python/install
from twilio.rest import Client

# Initialize the client
account = "ACCOUNT_SID"
token = "AUTH_TOKEN"
client = Client(account, token)

messages = client.chat \
                 .services("SERVICE_SID") \
                 .channels("CHANNEL_SID") \
                 .messages \
                 .list()

for message in messages:
    print(message.body)
