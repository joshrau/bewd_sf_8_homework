class Movie < ActiveRecord::Base
	validates :title, :description, presence: true
	validates :year_released, numericality: {greater_than: 1800}


	def self.search(query)
		if query
  			Movie.where('title || description || year_released LIKE :search', search: "%#{query}%")
  		else
  			@movies = Movie.all
  		end
  	end
end



