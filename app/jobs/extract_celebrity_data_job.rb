# class ExtractCelebrityDataJob
#   include Sidekiq::Worker

#   def perform(name, count)
#         query = [{
#   "id":            null,
#   "/type/object/mid": null,
#   "name":          null,
#   "/common/topic/image": [{
#     "id":       null,
#     "optional": "optional"
#   }],
#   "/people/person/profession": [],
#   "/people/person/date_of_birth": null,
#   "type":          "/celebrities/celebrity",
#   "limit":         10,
#   "/common/topic/article": {
#     "guid":     null,
#     "limit":    1,
#     "optional": true
#   }
# }]
#     url = Addressable::URI.parse('https://www.googleapis.com/freebase/v1/mqlread')
#     url.query_values = {
#         'query' => query.to_json,
#         'key'=> API_KEY
#     }
#     response = HTTParty.get(url, :format => :json)

#     response['result'].each { |topic|
#       @celeb_name = topic['name']
#       @celeb_dob = topic['/people/person/date_of_birth']

#       @celeb_info[@celeb_name] = @celeb_dob
    
#     } 
#   end
# end