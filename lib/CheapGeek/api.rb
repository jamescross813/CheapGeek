require 'httparty'
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'
 

class API
   URL = "https://freetogame.com/api/games"

   def self.get_info(url)
    response = HTTParty.get(URL)
    response.body 
   end  

end

#binding.pry