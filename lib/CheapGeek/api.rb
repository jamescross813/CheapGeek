#!/usr/bin/env ruby
require 'pry'
require 'httparty'
class API
  
    def self.get_info
    response = HTTParty.get("https://www.freetogame.com/api/games")
     
    binding.pry
    # response.each do |data|  
       
    #     Game.new(data["title"], 
    #             data["genre"], 
    #             data["short_description"], 
    #             data ["release_date"], 
    #             data["game_url"])
    #     Genre.new(data["genre"], data["title"])
    #     end   
    end

end




puts
