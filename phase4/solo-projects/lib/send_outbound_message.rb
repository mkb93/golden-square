require 'twilio-ruby'
class Message
  initialize(receiver)
    @receiver = receiver 
  end
account_sid = 'ACxxxxxxxxxxxxxxxxxxxxxxxx'
auth_token = 'yyyyyyyyyyyyyyyyyyyyyyyyy'
client = Twilio::REST::Client.new(account_sid, auth_token)

from = '+15551234567' # Your Twilio number
to = '+15555555555' # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "Hey friend!"
)