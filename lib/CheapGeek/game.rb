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
    @@all_games << self
    end

    def elf.all_games
        @@all_games
    end


end