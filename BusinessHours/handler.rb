$LOAD_PATH << '.'
require 'BusinessHours'

class Handler

  def initialize
    hours = BusinessHours.new("9:00 AM", "3:00 PM")
    hours.update :fri, "10:00 AM", "5:00 PM"
    hours.update "Dec 24, 2010", "8:00 AM", "1:00 PM" 
    hours.closed :sun, :wed, "Dec 25, 2010"

    puts hours.calculate_deadline(2*60*60, "Jun 7, 2010 9:10 AM") # => Mon Jun 07 11:10:00 2010
    puts hours.calculate_deadline(15*60, "Jun 8, 2010 2:48 PM") # => Thu Jun 10 09:03:00 2010
    puts hours.calculate_deadline(7*60*60, "Dec 24, 2010 6:45 AM") # => Mon Dec 27 11:00:00 2010

  end

end


Handler.new()