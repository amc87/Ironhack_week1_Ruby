class User
	def initialize
		puts "Username:"
		user_name = gets.chomp
		if user_name == "alvaro"
			puts "OK!"
			password(user_name)
		else
			puts "try again please"
			username
		end
	end

	def password(user_name)
		puts "Password:"
		password = gets.chomp
		if password == "massana"
			puts "you are in!"
			Text.new
		else
			puts "Try again!"
			password(username)
		end	
	end
end

class Text
	def initialize
		puts "write text:"
		text = gets.chomp
		count_words(text)
	end

	def count_words(text)
		counter = text.split(' ').length
		puts "Text has #{counter} words" 
	end
end

User.new