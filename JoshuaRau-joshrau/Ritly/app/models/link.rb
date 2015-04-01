class Link < ActiveRecord::Base
	validates :link, presence: true
	validates :link, format: {with: /http:\/\/.+/, message: 'please begin with http://'}

	def self.ritlyhash
	SecureRandom.hex(4)
	end




end
