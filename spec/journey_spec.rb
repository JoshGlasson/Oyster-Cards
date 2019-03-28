require 'journey'

describe Journey do
  let(:oystercard) { double :oystercard }
  let(:entry_station) { double :station, name: "Station1", zone: 1 }
  let(:exit_station) { double :station, name: "Station2", zone: 4 }

  it 'starts a journey' do
  expect(subject.entrystation(entry_station)).to eq entry_station
  end

  it 'finishes a journey' do
    subject.entrystation(entry_station)
    subject.exitstation(exit_station)
    subject.journey
    expect(subject.journeys).to eq [{:entry_station=>entry_station, :exit_station=>exit_station}]
  end

  it 'returns a fare of a journey' do
    subject.entrystation(entry_station)
    subject.exitstation(exit_station)
    expect(subject.fare?).to eq 4
  end

  it 'checks if a journey is complete' do
    subject.entrystation(entry_station)
    subject.exitstation(exit_station)
    subject.journey
    expect(subject.in_journey?).to eq false
  end

  it 'receives touches in' do
    oystercard = Oystercard.new
    oystercard.top_up(80)
    oystercard.touch_in("Station")
    expect(oystercard.journey.in_journey?).to eq true
  end

  it 'receives touches out' do
    oystercard = Oystercard.new
    oystercard.touch_out("Station")
    expect(oystercard.journey.in_journey?).to eq false
  end

  it 'remembers entry station' do
    oystercard = Oystercard.new
    oystercard.top_up(80)
    oystercard.touch_in("Station")
    expect(oystercard.journey.entry_station).to eq "Station"
  end

  it 'forgets entry station on touch out' do
    subject.entrystation(entry_station)
    subject.exitstation(exit_station)
    subject.journey
    expect(subject.entry_station).to eq nil
  end


end
