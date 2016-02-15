require 'time'
require 'Date'

class BusinessHours

  def initialize(startTime, closeTime)
    @startTime = startTime
    @cloesTime = closeTime

    @updated   = Hash.new()
    @closed    = @array.new()
  end

  def update(day, startTime, closeTime)
    @updated[day]         = Hash.new(2)
    @updated[day][:start] = startTime
    @updated[day][:close] = closeTime
  end

  def closed(*days)
    days.each do |day|
    @closed.push(day)
  end

  end

  def calculate_deadline(interval, time)

  end

end
