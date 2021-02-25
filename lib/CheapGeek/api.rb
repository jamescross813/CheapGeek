require 'httparty'
require 'pry'
 

class API
   URL = "https://freetogame.com/api/games"

   def  self.get_info
    value = HTTParty.get(URL)
  end

  

end

#binding.pry