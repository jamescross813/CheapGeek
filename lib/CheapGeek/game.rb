require 'pry'
 


class Game
    
    attr_accessor :title, :genre, :description, :release_date, :game_url

    @@all_games = []

    def intialize(title, genre, short_description, release_date, game_url)
    @title = title
    @genre = genre
    @description = short_description
    @release_date = release_date
    @game_url = game_url
    self.save
    end

    def self.all_games
        @@all_games
    end
    
    def self.save
        @@all_games << self
    end

    def self.game_title
        self.all_games.select {|game| game.title == self}
    end

    def self.new_game

    end
end