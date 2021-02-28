
class Genre
    
attr_accessor :genre_name, :game_title

@@all_genres = []

    def initialize(genre, title)
        @genre_name = genre
        @game_title = title
        @games = []
        @@all_genres << self 
    end

    def genre_name
        @genre_name
    end

    def self.all_genres
        @@all_genres
    end

    def self.games
        Game.all_games.select {|game| game.genre == self}
    end

    def self.uniq_genres
        self.all_genres.map {|genre| genre.}
    end
   

    def add_game(game)
    if game.genre == nil
        game.genre = self
        end
        if !@games.include?(game)
        @games << game
        end
    end

    # def genre_list
    #     @new_array = []
    #     @songs.each do |song|
    #       if @new_array.include?(song.artist)
    #         nil
    #       else
    #         @new_array << song.artist
    #       end
    #     end
    #     @new_array
    # end

    # def self.find_game_by_genre(name)
    #     self.all_genres.detect{|genre| genre.genre_name == self}
    # end

end

# genre_list = ["MMORPG", "Shooter", "MMO", "Social", "Card Game", "MOBA", "Fighting", "Strategy", "Racing", "Sports", "Fantasy", "Battle Royale", "Action RPG"]