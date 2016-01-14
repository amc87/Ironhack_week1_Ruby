require 'pry'

class NewGame

	def initialize
		

		x = 0
		y = 0

		Character.new(x,y)
	end

end

class Character

	def initialize(x,y)
		@x = x
		@y = y

		question
	end

	def question

		puts "Where to go? (N,S,E,W)"

		answering

end

def answering
	answer = gets.chomp.downcase
	# binding.pry
		if answer == "n"
			go_north(@x,@y)

		elsif answer == "s"
			go_south(@x,@y)

		elsif answer == "e"
			go_east(@x,@y)

		elsif answer == "w"

			go_west(@x,@y)
		else

			puts "I did not understand."
			
				question
				
		end
	

	

	end

	def go_north(x,y)
		
			@y += 1
		
			puts @x
			puts @y

			options(@x, @y)
	end

	def go_south(x,y)
		
			@y -= 1
		
			puts @x
			puts @y
	end

	def go_east(x,y)
		
			@x += 1
		
			puts @x
			puts @y
	end

	def go_west(x,y)
		
			@x -= 1
		
			puts @x
			puts @y
	end

	def options(x,y)

		if x == 0 && y == 1

			puts "You Die!"
		end
		
	end


end

class Space

end

class Hall < Space

end

class Kitchen < Space

end

class Bedroom < Space

end

class Bathroom < Space

end

class Balcony < Space

end

NewGame.new

# binding.pry