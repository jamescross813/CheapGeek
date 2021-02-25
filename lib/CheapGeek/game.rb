require 'pry'
 
attr_accessor :title, :genre, :description, :release_date, :game_url

class Game
    
    def intialize(title, genre, short_description, release_date, game_url)
    @title = title
    @genre = genre
    @description = short_description
    @release_date = release_date
    @game_url = game_url
    end
end