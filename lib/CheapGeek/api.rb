#!/usr/bin/env ruby
require 'pry'
class API
   URL = "https://www.freetogame.com/api/games"
  
   def self.get_info(url)
    response = HTTParty.get(URL)
    info = JSON.parse(response.body)  
    info.each do |data|  
        Game.new(data["title"], 
                data["genre"], 
                data["short_description"], 
                data ["release_date"], 
                data["game_url"])
        # Genre.new(data["genre"], data["title"])
        end   
    end

end



#binding.pry