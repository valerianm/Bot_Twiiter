require 'dotenv'
Dotenv.load
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["consumer_key"]
  config.consumer_secret     = ENV["consumer_secret"]
  config.access_token        = ENV["access_token"]
  config.access_token_secret = ENV["access_token_secret"]
end

client.update('Je suis le plus grand des hackeurs')
p client
