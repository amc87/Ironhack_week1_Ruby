require 'pry'

class Translator
	def method_name
	end
	def self.translate_position(alphanum)
		x = alphanum.split("")[0]
		y = alphanum.split("")[1].to_i
		pos_array = []
		board_x = {
			:a => 0,
			:b => 1,
			:c => 2,
			:d => 3,
			:e => 4,
			:f => 5,
			:g => 6,
			:h => 7
		}
		board_y = {
			1 => 0,
			2 => 1,
			3 => 2,
			4 => 3,
			5 => 4,
			6 => 5,
			7 => 6,
			8 => 7
		}
		new_x = board_x[x.to_sym]
		new_y = board_y[y]
		pos_array = [new_x, new_y]

	end
end
class Board
	def self.mapping(pos_array_origin)

		board = {
			[0,0] => "wR",
			[0,1] => "wN",
			[0,2] => "wB",
			[0,3] => "wQ",
			[0,4] => "wK",
			[1,0] => "wP",
		}
		piece = board[pos_array_origin]
	end
end
class ChessValidator
	def initialize(alphanum_origin, alphanum_final)
		pos_array_origin = Translator.translate_position(alphanum_origin)
		pos_array_final = Translator.translate_position(alphanum_final)
		positions(pos_array_origin, pos_array_final)
	end
	def positions(pos_array_origin, pos_array_final)
		@x_origin = pos_array_origin[0]
		@y_origin = pos_array_origin[1]
		@x_final = pos_array_final[0]
		@y_final = pos_array_final[1]
		@checking_piece = Board.mapping(pos_array_origin)
		check_piece(@checking_piece)
	end	
	def check_piece(checking_piece)
		case checking_piece
		when "wR"
			Rook.new(@x_origin, @y_origin, @x_final, @y_final).move
		when "wN"
			Knight.new(@x_origin, @y_origin, @x_final, @y_final).condition
		when "wB"
			Bishop.new(@x_origin, @y_origin, @x_final, @y_final).move
		when "wQ"
			Queen.new(@x_origin, @y_origin, @x_final, @y_final).move
		when "wK"
			King.new(@x_origin, @y_origin, @x_final, @y_final).move
		when "wP" 
			WhitePawn.new(@x_origin, @y_origin, @x_final, @y_final).move
		end
	end
end
class Piece
	def initialize(ini_x, ini_y, last_x, last_y)
		@ini_x = ini_x
		@ini_y = ini_y
		@last_x = last_x
		@last_y = last_y
	end
end
class Rook < Piece
	def move
		if @ini_y == @last_y && @ini_x != @last_x
			puts "Legal"
		elsif @ini_y != @last_y && @ini_x == @last_x
			puts "Legal"	
		else
			puts "Ilegal"
		end
	end
end
class Bishop < Piece
	def move
		if @ini_y - @last_y == @ini_x - @last_x
			puts "Legal"
			else
			puts "Ilegal" 
		end
	end
end
class King < Piece
	def move
		if @ini_y - @last_y == @ini_x - @last_x && (@ini_y - @last_y).abs == 1
			puts "Legal"
		elsif @ini_y == @last_y && @ini_x != @last_x && (@ini_x - @last_x).abs == 1
			puts "Legal"
		elsif @ini_y != @last_y && @ini_x == @last_x && (@ini_y - @last_y).abs == 1
			puts "Legal"	
			else
			puts "Ilegal" 
		end
	end
end
class Queen < Piece
	def move
		if @ini_y - @last_y == @ini_x - @last_x
			puts "Legal"
		elsif @ini_y == @last_y && @ini_x != @last_x
			puts "Legal"
		elsif @ini_y != @last_y && @ini_x == @last_x
			puts "Legal"	
			else
			puts "Ilegal" 
		end
	end
end

class Knight < Piece
	def condition
		@cond_total = ((@ini_x - @last_x).abs == 2 && (@ini_y - @last_y).abs == 1) || ((@ini_y - @last_y).abs == 2 && (@ini_x - @last_x).abs == 1)
		move
	end
	def move
		if @cond_total
			puts "Legal"
		else
			puts "Ilegal"
		end
	end
end
class WhitePawn < Piece
	def move
		if @ini_x == @last_x && (@ini_y - @last_y).abs <= 2
			puts "Legal"
		else
			puts "Ilegal"
		end
	end
end
class BlackPawn < Piece
	def move
		if @ini_x == @last_x && (@ini_y - @last_y).abs <= 2
			puts "Legal"
		else
			puts "Ilegal"
		end
	end
end

new_chess = ChessValidator.new("a1", "b3") # Ilegal
new_chess = ChessValidator.new("b1", "b3") # Legal
new_chess = ChessValidator.new("a3", "b4") # Legal
new_chess = ChessValidator.new("a4", "a8") # Legal
new_chess = ChessValidator.new("a5", "a6") # Legal
new_chess = ChessValidator.new("a2", "c3") # Horse Legal
# new_chess = ChessValidator.new("b1", "b4")
# new_chess = ChessValidator.new("b1", "b4")



# new_chess = ChessValidator.new("a2", "e4")
# new_chess = ChessValidator.new("a2", "e2")



# new_chess = ChessValidator.new(0, 8)
# new_chess = ChessValidator.new(1, 8)
# new_chess = ChessValidator.new(2, 0)
# new_chess = ChessValidator.new(5, 8)
# new_chess = ChessValidator.new(6, 0)

