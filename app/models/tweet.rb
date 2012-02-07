class Tweet < ActiveRecord::Base

	#Lo jalamos de:
	#https://dev.twitter.com/apps/1590232/oauth

#con esto cada vez que ingrese al tweet, me jale esto	
def index
	Twitter.configure do |config|
	config.consumer_key = 'sU11LyJv9HLEy3Ve5UKg'
	config.consumer_scret = 'TCAldCVZOsyWY2YZ2bsTMyjdTtlwiCh6qLyLItkq8'
	config.consumer_token = '479144898-Qphji0gW17HX4mDFi8UUxKYd8jdcwESyysQiv1ZB'
	config.consumer_token_secret = 'D7LrYPPlAlaQ6sgV4znwnSJQPbvCLRgqKOYXYE8E'
	end
end

	
	#Tipo de validaciones agregado por el profesor:
	def message
		return "sin user" if self.user.blank? 
		Twitter.user_timeline(self.user).first.text	
	end
end
