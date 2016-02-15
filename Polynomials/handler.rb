$LOAD_PATH << '.'
require 'Polynomials'

class Handler

  def initialize
    puts "Enter , seperated values: "
    arr = gets.chomp.split(",")
    puts "Polynomial: "
    puts Polynomials.new(arr).compute
  end

end


Handler.new()