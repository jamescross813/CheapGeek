require 'pry'
require_relative './api' 


class Game
    
    attr_accessor :title, :genre, :description, :release_date, :game_url
   
    @@all_games = []

    binding.pry
    def initialize(title, genre, short_description, release_date, game_url)
        @title = title
        @genre = genre
        @description = short_description
        @release_date = release_date
        @game_url = game_url
        @@all_games << self
    end

    def self.all_games
        @@all_games
    end
    
    def self.save
        @@all_games << self
    end

    

    def self.new_game
        
    end
end