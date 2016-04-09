require 'base64'
require 'openssl'
require 'digest/sha1'

policy_document = '{"expiration": "2017-01-01T00:00:00Z",
  "conditions": [
    {"bucket": "foodstream"},
    ["starts-with",
      "$key",
      "uploads/"],
    {"acl": "private"},
    {"success_action_redirect": "https://torrid-torch-8806.firebaseapp.com"},
    ["starts-with", "$Content-Type", ""]
  ]
}'



policy = Base64.encode64(policy_document).gsub("\n","")

signature = Base64.encode64(
    OpenSSL::HMAC.digest(
        OpenSSL::Digest::Digest.new('sha1'),
        ENV["AWS_FOODSTREAM_KEY"], policy)
    ).gsub("\n","")

puts signature + " signature \n "

puts policy
