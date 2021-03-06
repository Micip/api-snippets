// Download the twilio-csharp library from twilio.com/docs/libraries/csharp
using System;
using Twilio;
using Twilio.Rest.Chat.V2.Service.Channel;

class Example
{
    static void Main(string[] args)
    {
        // Find your Account SID and Auth Token at twilio.com/console
        const string accountSid = "accountSid";
        const string authToken = "authToken";
        const string serviceSid = "serviceSid";
        const string channelSid = "channelSid";
        const string messageSid = "messageSid";

        TwilioClient.Init(accountSid, authToken);

        // Retrieve a message
        var message = MessageResource.Fetch(serviceSid, channelSid, messageSid);
        Console.WriteLine(message.Body);
    }
}
