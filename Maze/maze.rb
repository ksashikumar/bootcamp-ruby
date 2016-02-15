class Maze
	
	def initialize(str)
		@str = str
		@strs = precompute
		@xy = findStart
		@x = @xy[0]
		@y = @xy[1]
	end

	def precompute
		@str.split("\n")
	end

	def findStart
		for i in 0..@strs.size 
			for j in 0..@strs[i].size
				if @strs[i][j] == 'A'
					return i, j
				end
			end
		end

	end

	def solvable?
		
	end

	def steps
	
	end

end

