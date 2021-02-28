require 'pry'
require_relative './api.rb' 


class Game
    
    attr_accessor :title, :genre, :description, :release_date, :game_url, :cli
   
    @@all_games = []

    
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

    

    
end