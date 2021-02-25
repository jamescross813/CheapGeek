require 'httparty'
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'
 

class API
   URL = "https://freetogame.com/api/games"

   def self.get_info(url)
    response = HTTParty.get(URL)
    binding.pry
    response.body
   
   end
   
   def get_title
    titles = JSON.parse(self.get_info)
    titles.collect do |title|
      title["title"]  
    end

    
   end

  

end

#binding.pry