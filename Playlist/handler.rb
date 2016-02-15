$LOAD_PATH << '.'
require 'SkipTracks'

class Handler

	def initialize
		puts "Enter Size: "
		size = gets.chomp.to_i

		arr = Array.new()

		size.times do
			n = gets.chomp
			arr.push(n)
		end

		puts "Enter offset: "
		i = gets.chomp.to_i
		SkipTracks.skip_tracks(arr, i)

		puts "Rotated Array: "
		puts arr
	end

end


Handler.new()