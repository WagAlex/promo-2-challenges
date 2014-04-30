require 'twitter'

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "Ti3LlNXqR1TNq79quaAnZEG4D"
  config.consumer_secret     = "GheBMplYUmzRxeegOrlSH42DZEMtwm71xx8w9v2gF07HTpQAjS"
  config.access_token        = "2445097452-oND7NlX5FkYZjvq5LOCHbbcElmTjHb2clbj199l"
  config.access_token_secret = "DNGyE4EKeIFxiFGYivTLJ7Jd6DTMKr0XAcIuBJcztWcwo"
end

topics = ["mdr", "salope"]
client.filter(:track => topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end

