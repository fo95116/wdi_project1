class RemindersController < ApplicationController



def make_message
# Get twilio-ruby from twilio.com/docs/ruby/install
require 'twilio-ruby'

#Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC8966f22ed875b133bc29031239a19d48'
auth_token = '268b5410875cbf5edd5b1b4c17982c2d'
@client = Twilio::REST::Client.new account_sid, auth_token
#the @client initializes a helper library that will be able to receive and send messages
#the @client will communicate with twilio's REST API (talks to the twilio server to send messages)

message = @client.account.sms.messages.create(:body => "This better work!",

    :to => "+14086605293",
    :from => "+14085123430")
puts message.to
end

def show

end

end
