class Movie < ActiveRecord::Base
	def poster
		"http://ia.media-imdb.com/images/M/#{poster_url}"
	end
	
	def imdb
		"http://www.imdb.com/title/#{imdb_id}/"
	end
	
	def stripe_price
		"#{price * 100}"
	end
end
