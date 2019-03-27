
class Oystercard

  attr_reader :balance, :journey
  DEFAULT_MAXIMUM_FUNDS = 90
  DEFAULT_MINIMUM_FUNDS = 1

  def initialize
    @balance = 0
    @journey = Journey.new
  end

  def top_up(value)
    fail 'Maximum £90' if max?(value)
  end

  def touch_in(station)
    fail 'Minimum fare £1' if minimum?
    @journey.entrystation(station)
  end

  def touch_out(station)
    deduct
    @journey.exitstation(station)
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

end
