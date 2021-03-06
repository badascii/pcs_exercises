require 'rubygems'
require 'oauth'

# Change the following values to those provided on dev.twitter.com
# The consumer key identifies the application making the request.
# The access token identifies the user making the request.
consumer_key = OAuth::Consumer.new(
    "PuzOVQTX8Cr0Okiqfq5d4g",
    "xTjcUvRB7NYe167E2TPQqISR12qhXgQDufpW1TeSo")
access_token = OAuth::Token.new(
    "1499679481-uMzZQjqjMfXDDiLZYDQFDj2l4S8VEj9qMxQRn7y",
    "vqeZxLQttAvYHIlu75bCEjA9h434DmyJsdHWMVJAw")

# All requests will be sent to this server.
baseurl = "https://api.twitter.com"

# The verify credentials endpoint returns a 200 status if
# the request is signed correctly.
address = URI("#{baseurl}/1.1/account/verify_credentials.json")

# Set up Net::HTTP to use SSL, which is required by Twitter.
http = Net::HTTP.new address.host, address.port
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER

# Build the request and authorize it with OAuth.
request = Net::HTTP::Get.new address.request_uri
request.oauth! http, consumer_key, access_token

# Issue the request and return the response.
http.start
response = http.request request
puts "The response status was #{response.code}"