# fruits = ["orange", "banana","pineapple"]

# fruits.each do |fruit|
# 	puts fruit
# end

########

# people = {

# 	name: "John",
# 	surname: "Doe"

# }

# people.each do |key, value|

# 	puts "#{key}: #{value}"

# end

###### xample: each ######

# people = ["Miguel", "Alex", "Emily"]

# people.each do |name|

# 	puts "Good morning #{name}"

# end


##### Exercise: .each #####

# total = []

# [1,2,3].each do |i|

# 	total.push(i+1)

# end

# puts total

##### Exercise: .map #####


# cities = ["miami", "madrid", "barcelona"]

# # Option 1

# n_ar = cities.map do |item|

# 	item.capitalize

# end

# # Option 2

# n_ar = cities.map {|city| city.capitalize}

# # Result
# puts n_ar


###### Exercise: Reduce ######

# [].reduce(0) { |sum, x| sum + x}


# cities = ["miami", "madrid", "barcelona"]

# longest = cities.reduce { |maxlength, city|
# 	if maxlength.length > city.length
# 		first
# 	else 
# 		city
# 	end
# }

# puts longest

###### Other Collection methods ######

## each_with_index

# ["a", "b", "c"].each_with_index { |x, i| puts "[#{i}] #{x}"}

## select

# just_odds = [5,2,3].select {|current_num| current_num.odd?}

# puts just_odds

## grep

# puts ["casa", "masa", "pepino"].grep(/as/)



array = [1, 2, 3]

puts array



