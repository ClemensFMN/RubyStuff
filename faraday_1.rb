require 'faraday'
require 'json'

res = Faraday.get 'http://now.httpbin.org'
prsd = JSON.parse(res.body)

puts prsd['now']['iso8601']

