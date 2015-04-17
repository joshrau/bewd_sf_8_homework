class Story < ActiveRecord::Base
  validates :title, :link, :category, :upvotes, presence: true
  
	def self.search(query)
		if query
  			Story.where('title || category LIKE :search', search: "%#{query}%")
  		else
  			@stories = Story.all
  		end
  	end

end
