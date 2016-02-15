# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



movie_list = [
  [ "The Shawshank Redemption", 1994, 2.99,
		"Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
		"tt0111161",
		"/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg" ],
  [ "Deadpool", 2016, 2.99, 
		"A former Special Forces operative turned mercenary is subjected to a rogue experiment that leaves him with accelerated healing powers, adopting the alter ego Deadpool.",
		"tt1431045",
		"/MV5BMjQyODg5Njc4N15BMl5BanBnXkFtZTgwMzExMjE3NzE@._V1_UY268_CR1,0,182,268_AL_.jpg"],
  [ "Suicide Squad", 2016, 2.99, 
		"A secret government agency recruits imprisoned supervillains to execute dangerous black ops missions in exchange for clemency.",
		"tt1386697",
		"/MV5BOTY1MzU1MDQ1MF5BMl5BanBnXkFtZTgwNjAzMjY3NzE@._V1_UX182_CR0,0,182,268_AL_.jpg"],	
	[ "Demolition", 2015, 2.99, 
		"A successful investment banker struggles after losing his wife in a tragic car crash.",
		"tt1172049",
		"/MV5BMjE2MDIyNjg4Nl5BMl5BanBnXkFtZTgwNjUxNTI5NzE@._V1_UX182_CR0,0,182,268_AL_.jpg"	]
	
]

movie_list.each do |title, release_year, price, description, imdb_id, poster_url|
  Movie.find_or_create_by(title: title, release_year: release_year, price: price, description: description, imdb_id: imdb_id, poster_url: poster_url)
end

users = []
