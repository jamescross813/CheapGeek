
class Genre
    
attr_accessor :genre_name, :game_title

@@all_genres = []


    def initialize(genre= nil, title= nil)
        @genre_name = genre
        @game_title = title
       
        @@all_genres << self 
        
    end

    def self.genre_name
        @genre_name
    end

    def self.all_genres
        @@all_genres
    end

    def self.games
        Game.all_games.select {|game| game.genre == self}
    end

    def self.genres
        genres = []
        genres.map do |genre|
        binding.pry
        if genres.include?(self)
            nil
        else 
            genres << genre
        end
    end
    end

    def self.create
        genre = self.new
        genre.save
        genre
    end

    def self.save
        @@all_genres << self
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

    # def self.find_by_name
        #     self.all.find{|genre| genre.genre_name == self}
        #   end
    
        #   def self.create_by_name(genre_name)
        #     genre = self.create
        #     genre.name = genre
        #     genre
        #   end
    
    
        # def self.find_or_create_by_name(genre)
        #     if self.find_by_name(genre) #check to see if it already exists
        #       self.find_by_name(genre) 
        #     else 
        #       self.create_by_name(genre) #creates new one if it doesn't exist
        #    end
        #   end

end

# genre_list = ["MMORPG", "Shooter", "MMO", "Social", "Card Game", "MOBA", "Fighting", "Strategy", "Racing", "Sports", "Fantasy", "Battle Royale", "Action RPG"]