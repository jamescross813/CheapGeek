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

   def parse_json(body)
    info = JSON.parse(self.get_info)
    # binding.pry
    info.collect do |data|
        new_game = Game.new
        new_game.name = data["title"]
        new_game.genre = data["genre"]
        new_game.description = data["short description"]
        new_game.release_date = data["release date"]
        new_game.game_url = data["game url"]
        end   
    end

end

#binding.pry