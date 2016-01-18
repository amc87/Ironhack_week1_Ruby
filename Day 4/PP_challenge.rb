require 'pry' 

require 'Date'

# class Read

# 	def initialize
# 	end

# 	def read

# 		read_text = IO.readlines("test.srt")
# 		read_text.each do |line|
# 			if line.include?("-->")
# 				timestamp = line.split(" --> ")
# 				timestamp.each do |time|
# 					date_time = DateTime.parse(time, "%H:%M:%S,%3N").to_time + 2.5
# 					IO.write(date_time)
# 				end
# 			end
# 		end
# 	end
# end

# Read.new.read

class Read

	def initialize
	end

	def read

		read_text = IO.readlines("test.srt")
		read_text.each do |line|
			if line.include?("-->")
				timestamp = line.split(" --> ")
				timestamp[0] = DateTime.parse(timestamp[0], "%H:%M:%S,%3N").to_time + 2.5
				timestamp[1] = DateTime.parse(timestamp[1], "%H:%M:%S,%3N").to_time + 2.5
				IO.write("test2.srt", "#{timestamp[0]} --> #{timestamp[1]}")
				binding.pry
				
			end
		end
	end
end

Read.new.read