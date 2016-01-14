#### Accessing elements inside elements (arrays inside hashes and the other way around)

# hash = {:wat => ["a",2,{:wut => [2,[[0,1,2,3,4,5,6,7,8,{:bbq => "ya!"}]]]}]}


# arr = [[0,1,2,3,4,{:secret => {:unlock => [0,1]}}]]


# puts hash[:wat][2][:wut][1][0][9][:bbq]
# puts arr[0][5][:secret][:unlock][1]



##### Exersice accessing elements inside elements.

# class CarDealer

# 	def initialize
# 			@cars = {

# 				:ford => ["fiesta", "mustang"],

# 				:seat => ["ibiza", "leon", "toledo"]

# 				}	
# 	end

# 	def find_cars(brand)

# 		puts "Our '#{brand}'' cars:"
# 		puts @cars[brand.to_sym]

# 	end

# end


# new_car = CarDealer.new

# new_car.find_cars("ford")
# new_car.find_cars("seat")

#### Coupling classes and elements without Inheritance or Modules

# class Engine
# 	def initialize
# 		puts "Pssshhh"
# 	end
# end


# class Car
# 	def initialize
# 		new_engine = Engine.new
# 	end

# end

# new_car = Car.new


##### Exercise: Always better Comporsition over Inheritance

# class Car

# 	def initialize(sound)
# 		car = Engine.new
# 		puts sound
# 	end

# end

# class Engine

# 	def initialize
# 		puts "PPPSSSSHHH"
# 	end

# end

# eng1 = Car.new("BROOOOM")

# eng2 = Car.new("ZZZZZZ")


###### Duck types: If 2 objects (classes) have the same method, you can use it at the same time

class Vehicle
	def initialize(wheels, sound)

		@wheels = wheels
		@sound = sound

		Wheels.new(sound)
		Noises.new(wheels)

	end
end

class Wheels

	def initialize(wheels)
		puts wheels
	end
end

class Noises


	def initialize(sound)
		puts sound
	end
	

end

vehicle = {

	:car => Vehicle.new(4, "BROOOOM"),
	:moto => Vehicle.new(2, "PPPSSSSHHH"),
	:skate => Vehicle.new(4, "ZZZZZZ")

}











