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
     binding.pry
    info.collect do |data|
        new_game = Game.new
        new_game.title = data["title"]
        new_game.genre = data["genre"]
        new_game.description = data["short description"]
        new_game.release_date = data["release date"]
        new_game.game_url = data["game url"]
        end   
    end

end

API.get_info("https://freetogame.com/api/games")

#binding.pry