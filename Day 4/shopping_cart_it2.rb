require 'pry'

class ShoppingCart

	def initialize

		@costs = 0
		
		@price_table = {

		:apple => 10,
		:oranges => 5,
		:grapes => 15,
		:banana => 20,
		:watermelon => 50,
		}

		@cart = {}
	end

	def add_item_to_cart(item)
		# miro si la hash @cart tiene el artículo apple, si no lo tiene, lo creo con quatity = 1 y su precio. Si ya existe, sólo le sumo 1 a la quatity.
		if @cart.has_key?(item) == false
			@cart[item] = [@price_table[item], 1]
		else
		 	@cart[item][1] += 1
		end
	end

	def show

		@cart.each do |key, value|
			puts "#{value[1]} #{key} = #{value[0] * value[1]}€"
		end
	end

	def cost

		total = 0

		@cart.each do |key, value|

			total_item_cost = value[1] * value[0]
			total += total_item_cost
		end

		puts total

		
	end

	def discount
		@cart.each do |key, value|
			if key == "apple" && value[1] == 2
		end

	end


end

cart = ShoppingCart.new


cart.add_item_to_cart(:apple)
cart.add_item_to_cart(:apple)
cart.add_item_to_cart(:apple)
cart.add_item_to_cart(:apple)
cart.add_item_to_cart(:banana)

cart.add_item_to_cart(:oranges)
cart.add_item_to_cart(:apple)
cart.add_item_to_cart(:apple)

cart.show

cart.cost
