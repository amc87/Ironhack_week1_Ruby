require 'pry'

class ShoppingCart

	def initialize

		@costs = 0
		
		@price_table = {

		:apples => 10,
		:oranges => 5,
		:grapes => 15,
		:banana => 20,
		:watermelon => 50,
		}
	end

	def add_item_to_cart(item)

		@item_name = item.to_s

		@item_price = @price_table[item]

		@costs += @item_price

		show(@item_name, @item_price)

	end

	def show(item_name, item_price)

		puts "#{item_name}: #{item_price}"
		
	end

	def cost

		puts @costs

		
	end

end

cart = ShoppingCart.new

cart.add_item_to_cart(:apples)
cart.add_item_to_cart(:banana)

cart.cost

