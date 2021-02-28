#!/usr/bin/env ruby
require 'pry'
require 'httparty'
require_relative './game.rb'
require_relative './genre.rb'

class API
#   attr_accessor :game, :genre
    def self.get_info(url)
    info = HTTParty.get("https://www.freetogame.com/api/games")
     
    
    info.each do |data|  
       
        Game.new(data["title"], 
                data["genre"], 
                data["short_description"], 
                data ["release_date"], 
                data["game_url"])
        Genre.new(data["genre"], data["title"])
        end   
    end
    binding.pry
end




API.get_info("https://www.freetogame.com/api/games")
