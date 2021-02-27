require 'httparty'
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'
require_relative './game'
require_relative './genre'
 

class API
   URL = "https://freetogame.com/api/games"

   def self.get_info(url)
    response = HTTParty.get(URL)
       info = JSON.parse(response.body)
    info.each do |data|
        Game.new(data["title"], 
                data["genre"], 
                data["short_description"], 
                data ["release_date"], 
                data["game_url"])
        Genre.new(data["genre"], data["title"])
        binding.pry
        end   
    end

end



#binding.pry