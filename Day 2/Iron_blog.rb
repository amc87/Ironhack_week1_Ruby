require "pry"

require 'date'

class Blog

	attr_accessor :title, :date, :text
	
	def initialize

		@posts = []

	end
	def add_post(post)

		@posts.push(post)

	end

	def publish_front_page(starting_post = 0)

		last_post = starting_post + 2
		
		@posts[starting_post..last_post].each do |single_post|
			if single_post.sponsored == true
				puts "******#{single_post.title}******"
			else
				puts single_post.title
			end
			puts "*************"
				puts single_post.text

			pages
		end

		

		pagination(starting_post)

	end

	def pagination(starting_post)


		puts "Next or previous?"
		page_choice = gets.chomp
		
		if page_choice == "next"
			starting_post += 3
		else
			starting_post -= 3
		end
		publish_front_page(starting_post)
	end

	def pages

		number_of_pages = (@posts.length / 3.0).round

		puts



	end

end

class Post
	attr_accessor :title, :date, :text, :sponsored


	def initialize(title, text, sponsored)

		@title = title
		@date = Time.new
		@text = text
		@sponsored = sponsored
			
	end

end

blog = Blog.new



post1 = Post.new("Post 1", "hola hola hola", false)
post2 = Post.new("Post 2", "ciao ciao ciao", true)
post3 = Post.new("Post 3", "hello hello hello", false)
post4 = Post.new("Post 4", "hola hola hola", false)
post5 = Post.new("Post 5", "ciao ciao ciao", true)
post6 = Post.new("Post 6", "hello hello hello", false)
post7 = Post.new("Post 7", "hello hello hello", false)
post8 = Post.new("Post 8", "hello hello hello", false)



blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)
blog.add_post(post4)
blog.add_post(post5)
blog.add_post(post6)
blog.add_post(post7)
blog.add_post(post8)


blog.publish_front_page

pages = blog.pages


# binding.pry

puts "hola"