require 'pry' 

require 'Date'

class Read

	def initialize
		
	end

	def read

		# read_text = IO.read("test.srt").split("\n")
		read_text = IO.readlines("test.srt")
		read_text.each do |line|

			if line.include?("-->")

				timestamp = line.split(" --> ")
				# puts timestamp[0] #starting times

				# puts timestamp[1] #ending times

				timestamp.each do |time|

					date_time = DateTime.parse(time, "%H:%M:%S,%3N").to_time + 3

					

					binding.pry

					print date_time
				end

				

			end
		end

		
		
	end

	def method_name
		
	end


end

Read.new.read

