
class API
    
    def self.get_info
        info = HTTParty.get("https://www.freetogame.com/api/games")
        info.each do |data|
                
                Game.new(data["title"], 
                        data["genre"], 
                        data["short_description"], 
                        data ["release_date"], 
                        data["game_url"])    
        end   
    end
    
end





