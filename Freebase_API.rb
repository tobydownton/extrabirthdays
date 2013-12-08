require 'rubygems'
require 'cgi'
require 'httparty'
require 'json'
require 'addressable/uri'

API_KEY = "AIzaSyAjtrrpxwRz_6EYmf9fNZ6PBrqs9tXfUkE"
query = [{'id' => nil, 'name' => nil, 'type' => "/celebrities/celebrity",
  "/people/person/date_of_birth" => []}]
url = Addressable::URI.parse('https://www.googleapis.com/freebase/v1/mqlread')
url.query_values = {
        'query' => query.to_json,
        'key'=> API_KEY
}
response = HTTParty.get(url, :format => :json)
response['result'].each { |topic|
  puts topic['name']
  puts topic['/people/person/date_of_birth']
} 