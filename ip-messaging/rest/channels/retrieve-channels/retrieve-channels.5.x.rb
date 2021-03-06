require 'twilio-ruby'

# Get your Account SID and Auth Token from twilio.com/console
account_sid = 'ACCOUNT_SID'
auth_token = 'AUTH_TOKEN'
service_sid = 'SERVICE_SID'
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Retrieve a particular channel
my_channel_sid = 'CHANNEL_SID'
service = @client.chat.v2.services(service_sid)
channel = service.channels(my_channel_sid).fetch
puts "Channel #{channel.sid} has Unique Name \"#{channel.unique_name}\""
