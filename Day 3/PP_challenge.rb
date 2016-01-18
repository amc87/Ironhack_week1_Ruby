require 'imdb'
require 'pry'


class Reader

	def initialize
		movie_titles = IO.read("text.txt").split("\n")
		title_counter = 0
		movie_titles.each do |line|
			title_counter += 1
			puts "#{title_counter}. #{line}"
			id_search = Imdb::Search.new(line).movies[0].id
			movie_rating = Imdb::Movie.new(id_search).rating
			puts "#{line}: #{movie_rating}"

		end
	end

end


Reader.new


