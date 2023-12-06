# Load gems
require 'dotenv/load'
require 'nylas'	

# Initialize Nylas client
nylas = Nylas::Client.new(
    api_key: ENV["V3_TOKEN"]
)

request_body = {
    subject: "With Love, from Nylas",
    body: "This email was sent using the <b>Ruby SDK</b> for the Nylas Email API. 
           Visit <a href='https://nylas.com'>Nylas.com</a> for details.",
    to: [{name: ENV["RECIPIENT_NAME"], email: ENV["RECIPIENT_ADDRESS"]}],
}

email, _ = nylas.messages.send(identifier: ENV["GRANT_ID"], request_body: request_body)
puts email
