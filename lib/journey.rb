class Journey

  attr_reader :entry_station, :journeys, :journeys_array, :exit_station, :fare
  MINIMUM_FARE = 1
  PENALTY_FARE = 6

  def initialize
    @entry_station = nil
    @exit_station = nil
    @journeys_array = []
    @journeys = Hash.new
    @fare = 0
  end

  def entrystation(station)
    @entry_station = station
  end

  def exitstation(station)
    @exit_station = station
    @journeys_array << [@entry_station, @exit_station]
    fare?
  end

  def in_journey?
    if @entry_station == nil
      false
    else
      true
    end
  end

  def journey
    @journeys = @journeys_array.map { |entry, exit| { entry_station: entry, exit_station: exit} }
    @entry_station = nil
    @exit_station = nil
  end

  def fare?
    if @entry_station == nil || @exit_station == nil
      @fare = PENALTY_FARE
    else
      @fare = (@entry_station.zone - @exit_station.zone).abs + MINIMUM_FARE
    end
  end


end
