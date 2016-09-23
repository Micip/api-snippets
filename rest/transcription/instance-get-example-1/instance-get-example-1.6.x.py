# Download the Python helper library from twilio.com/docs/python/install
from twilio.rest import Client

# Your Account Sid and Auth Token from twilio.com/user/account
account_sid = "ACXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
auth_token = "your_auth_token"
client = Client(account_sid, auth_token)

transcription_sid = "TR8c61027b709ffb038236612dc5af8723"
transcription = client.transcriptions(transcription_sid).fetch()

print(transcription.transcription_text)
