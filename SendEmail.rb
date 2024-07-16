# Load gems
require 'dotenv/load'
require 'nylas'	

# Initialize Nylas client
nylas = Nylas::Client.new(
    api_key: ENV["NYLAS_API_KEY"],
    api_uri: ENV["NYLAS_API_URI"]
)

request_body = {
    subject: "With Love, from Nylas",
    body: "This email was sent using the <b>Ruby SDK</b> for the Nylas Email API. 
           Visit <a href='https://nylas.com'>Nylas.com</a> for details.",
    to: [{email: ENV["RECIPIENT_EMAIL"]}],
}

email, _ = nylas.messages.send(identifier: ENV["NYLAS_GRANT_ID"], request_body: request_body)
puts "Message \"#{email[:subject]}\" was sent with ID #{email[:id]}"
