#!/usr/bin/env ruby
# Import your dependencies
require 'dotenv/load'
require 'nylas'

# Initialize your Nylas API client
nylas = Nylas::API.new(
    app_id: ENV["CLIENT_ID"],
    app_secret: ENV["CLIENT_SECRET"],
    access_token: ENV["ACCESS_TOKEN"]
)

begin
# Send your email
	message = nylas.send!(to: [{ email: ENV["RECIPIENT_ADDRESS"], name: "Recipient name" }],
			      subject: "With Love, from Nylas", body: "Well well well...")
	puts "Message \"#{message.subject}\" was sent with ID #{message.id}"	
rescue => error
# Something went wrong
	puts error.message
end
