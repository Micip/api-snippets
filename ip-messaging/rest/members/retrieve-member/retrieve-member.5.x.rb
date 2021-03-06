require 'twilio-ruby'

# Get your Account SID, Auth Token, Service SID and Channel SID from twilio.com/console
account_sid = 'ACCOUNT_SID'
auth_token = 'AUTH_TOKEN'
service_sid = 'SERVICE_SID'
channel_sid = 'CHANNEL_SID'
@client = Twilio::REST::Client.new(account_sid, auth_token)

# Retrieve the member
service = @client.chat.v2.services(service_sid)
channel = service.channels(channel_sid)
member = channel.members('MEMBER_SID').fetch
puts member.identity
