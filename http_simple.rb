require 'net/http'
require 'json'

res = Net::HTTP.get('now.httpbin.org', '/')
puts res

res_hash = JSON.parse(res)
pp res_hash
pp res_hash["now"]["iso8601"]
