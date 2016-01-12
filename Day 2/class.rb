# class Car
# 	def initialize(sound, paint = "white")
# 		puts sound + " & " + paint
# 	end
# end

# a_car = Car.new("Broom!", "black")

# another_car = Car.new("BROOOOOOM!")

#### Instance Variables



# class Car
# 	def initialize(sound)

# 		 @sound = sound

# 	end

# 	def sound

# 		puts @sound
		
# 	end
# end

# a_car = Car.new("Broom!")



#### Class methods: Use them to use a method x times without creating x instances, only once ( a_car, created once, but a_car.sound called 4 times with only 1 Car.new ). not very new, but can be useful to optimize.

# class Car

# 	attr_accessor :sound
# 	def initialize(sound)

# 		 @sound = sound

# 	end

# 	def sound

# 		puts @sound
		
# 	end

# 	def self.test_car

# 		puts "testing car"
# 	end

# 	def self.sound1(a_car)

# 		2.times {a_car.sound}

# 	end
# end

# a_car = Car.new("Broom!")

# #example 1:
# Car.test_car

# #example 2:
# Car.sound1(a_car)

#### Adding array cities


# class Car


# 	def initialize(sound)
# 		 @sound = sound
# 		 @cities_visited = []
# 	end

# 	def sound
# 		puts @sound
# 	end

# 	def cities(city)

# 		if city.kind_of?(Array)
# 			city.each do |single_city|
# 				@cities_visited.push(single_city)
# 			end
# 		else
# 			@cities_visited.push(city)
# 		end
# 	end

# 	def visited
# 		print "#{@cities_visited} \n"
# 	end

# end

# a_car = Car.new("Broom!")

# a_car.cities("BCN")
# a_car.cities(["London", "Madrid", "milan"])
# a_car.visited

##### Store cities array in a file (IO.write)

# class Car


# 	def initialize(sound)
# 		 @sound = sound
# 		 @cities_visited = []
# 	end

# 	def sound
# 		puts @sound
# 	end

# 	def cities(city)

# 		if city.kind_of?(Array)
# 			city.each do |single_city|
# 				@cities_visited.push(single_city)
# 			end
# 		else
# 			@cities_visited.push(city)
# 		end
# 	end

# 	def visited

# 		IO.write("#{self.object_id}.txt",@cities_visited)
# 	end

# 	def cities_to_file

# 	end

# end

# a_car = Car.new("Broom!")

# a_car.cities("BCN")
# a_car.cities(["London", "Madrid", "milan"])
# a_car.visited

##### Child Classes

# class Car


# 	def initialize(sound)
# 		 @sound = sound
# 		 @cities_visited = []
# 	end

# 	def sound
# 		puts @sound
# 	end

# 	def cities(city)

# 		if city.kind_of?(Array)
# 			city.each do |single_city|
# 				@cities_visited.push(single_city)
# 			end
# 		else
# 			@cities_visited.push(city)
# 		end
# 	end

# 	def visited

# 		print "#{@cities_visited} \n"

# 	end

# 	def cities_to_file

# 	end

# end

# class Racing_car < Car
# 	def initialize
# 		puts "BRUUUUUMM"
# 	end
# end

# a_car = Car.new("Broom!")

# a_car.cities("BCN")
# a_car.cities(["London", "Madrid", "milan"])
# a_car.visited

# race_car = Racing_car.new


### Accessors


# class Person
# 	attr_accessor :name, :age
# 	def initialize(name, age)

# 			@name = name
# 			@age = age
		
# 	end

# end


# a_person = Person.new("Alvaro", 28)

# puts a_person.name
# puts a_person.age

# puts a_person.age = 44




