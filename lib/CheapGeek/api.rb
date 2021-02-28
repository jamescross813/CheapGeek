
require 'pry'
require 'httparty'


class API

    def initialize
        puts "in API class"

    end
# attr_accessor :game, :genre
#     def self.get_info(url)
#     info = HTTParty.get(url)
     
#     info.each do |data|  
#        Genre.new(data["genre"], data["title"])
#         Game.new(data["title"], 
#                 data["genre"], 
#                 data["short_description"], 
#                 data ["release_date"], 
#                 data["game_url"])
    
#         end   
       
    # end
    
end

# binding.pry


# API.get_info("https://www.freetogame.com/api/games")
