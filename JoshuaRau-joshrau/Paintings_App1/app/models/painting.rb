class Painting < ActiveRecord::Base

def self.search(query)
		if query
  			Painting.where('painting_title || artist || museum LIKE :search', search: "%#{query}%")
  		else
  			@paintings = Painting.all
  		end
  	end

end
