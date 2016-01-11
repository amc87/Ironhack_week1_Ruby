require 'pry'

class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize(name, city, capacity, price)

		@name = name
		@city = city
		@capacity = capacity
		@price = price
		
	end

end

homes = [

	Home.new("Pepe's place", "BCN", 2, 40),
	Home.new("Ariel's place", "MAD", 3, 50),
	Home.new("Juan's place", "NY", 4, 60),
	Home.new("Jose's place", "LDN", 6, 40),
	Home.new("Laura's place", "BCN", 1, 20),

]

## Iteration 1

def home_list(homes)
	puts "Name of the houses:"

	homes.each do |home|
		puts home.name
	end
end


## Iteration 2: Sort

def sort_question(homes)

	puts "Sort it how? 'c' for capacity, 'high' for highest price to lowest, nothing to lowest to highest"
	sort_type = gets.chomp
	sorting(homes, sort_type)

end

def sorting(homes, sort_type)
	if sort_type == 'c'
		sorted = homes.sort do |home1, home2|
			home1.capacity <=> home2.capacity
		end

	elsif sort_type == 'high'
		sorted = homes.sort do |home1, home2|
			home2.price <=> home1.price
		end

	else
		sorted = homes.sort do |home1, home2|
			home1.price <=> home2.price
		end

	end
end

# ## Iteration 3: Filter

def filter_question(homes)
	puts "Type a city to filter (BCN, MAD, LDN, NY):"
	user_filter = gets.chomp
	filtering(homes, user_filter)
end

def filtering(homes, user_filter)
	city_filter = homes.select do |home|
		home.city == user_filter
	end
end

# ## Iteration 4: Average

def total_price(homes)
	prices_sum = homes.reduce(0) do |sum, home|
		sum + home.price
	end
end

def average(homes)
	average = total_price(homes) / homes.length
end

## Iteration 5: 

def find_question(homes)
	puts "Specify a price to find the home:"
	user_filter_price = gets.chomp.to_i
	price_filtering(homes, user_filter_price)
end

def price_filtering(homes, user_filter_price)
	price_filter = homes.find do |home|
		home.price == user_filter_price
	end

end

binding.pry

puts "hola"