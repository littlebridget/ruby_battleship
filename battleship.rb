class Grid
	def CreateBaseGrid
$grid = Array.new(10){Array.new(10){0}}
y = 0
x = 0
end

def CreateBattleShips
$grid[1][2]= 1
$grid[1][3] = 1
$grid[5][1]= 1
$grid[5][2] = 1
$grid[5][3]= 1
$grid[8][7] = 1
$grid[8][8]= 1
$grid[8][9] = 1
$grid[7][9] = 1
$grid[6][9]= 1
$grid[5][9] = 1
$grid[8][2] = 1
$grid[7][3] = 1
$grid[6][4] = 1
end

def DrawGrid($grid[y][x])
puts "\nHere is what the game looks like now! X's are hits. O's are misses.\n \n"

(0...10).each do |y|
	(0...10).each do |x|
		if num == 0 || num == 1
		print "-"
			
		elsif num == 2 
		print "X"

		elsif num == 3
		print "O"
		end
	end
	puts
end
end



def Game
puts "Let's play battleship!\n \n"
puts
puts "Enter your coordinates like this y (0-9), x(0-9): "
choice = gets.chomp.split(",")
choicey = choice[0].to_i 
choicex = choice[1].to_i

	if $grid[choicey][choicex] == 1
		puts "\nHit!"
		$grid[choicey][choicex]= 2
	
	elsif $grid[choicey][choicex] == 0
		puts "\nYou missed! Try again."
		$grid[choicey][choicex]= 3
	end
return $grid[choicey][choicex]


end
end

# if grid.flatten.include? 1 
# 	keeptrying = true
# else
# 	keeptrying = false
# end

# end

# puts "You've sunk all the battleships!"

