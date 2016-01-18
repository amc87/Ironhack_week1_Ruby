class ProgrammingLanguage
 attr_accessor :name, :age, :type
 def initialize(name, age, type)
   @name = name
   @age = age
   @type = type
 end
end

ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
python = ProgrammingLanguage.new("Python", 24, "Dynamic")
javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
go = ProgrammingLanguage.new("Go", 6, "Static")
rust = ProgrammingLanguage.new("Rust", 5, "Static")
swift = ProgrammingLanguage.new("Swift", 2, "Static")
java = ProgrammingLanguage.new("Java", 20, "Static")

array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
    array.each do | language |
      puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
    end
end

puts "I delete java"
array_of_languages.delete(java)

array_printer(array_of_languages)

puts "The programming languages aged one year are:"

aged_languages = array_of_languages.map do |language|
    language.age += 1
    #do not forget to add language!!
    language
end

sorting_lan = array_of_languages.sort {
    |language1,language2| language1.age <=> language2.age 
}

sorting_lan2 = array_of_languages.sort_by { |language| language.age}

#Your code goes here
array_printer(aged_languages)
puts "The programming languages sorted 1st method aged one year are:"
array_printer(sorting_lan)
puts "The programming languages sorted 1st method aged one year are:"
array_printer(sorting_lan2)