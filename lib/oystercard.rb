
class Oystercard

  attr_reader :balance, :entry_station, :journeys, :journeys_array, :exit_station
  DEFAULT_MAXIMUM_FUNDS = 90
  DEFAULT_MINIMUM_FUNDS = 1

  def initialize
    @balance = 0
    @entry_station = nil
    @exit_station = nil
    @journeys_array = []
    @journeys = Hash.new
  end

  def top_up(value)
    fail 'Maximum £90' if max?(value)
  end

  def in_journey?
    if @entry_station == nil
      false
    else
      true
    end
  end

  def touch_in(entry_station)
    fail 'Minimum fare £1' if minimum?
    @entry_station = entry_station
  end

  def touch_out(exit_station)
    deduct
    @exit_station = exit_station
    journey
  end

private

  def max?(value)
    (@balance += value) > DEFAULT_MAXIMUM_FUNDS
  end

  def minimum?
    @balance < DEFAULT_MINIMUM_FUNDS
  end

  def deduct(fare = DEFAULT_MINIMUM_FUNDS)
    @balance -= fare
  end

  def journey
    @journeys_array << [@entry_station, exit_station]
    @journeys = @journeys_array.map { |entry, exit| { entry_station: entry, exit_station: exit} }
    @entry_station = nil
  end

end
