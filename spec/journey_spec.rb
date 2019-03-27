require 'journey'

describe Journey do
  let(:oystercard) { double :oystercard }

  it 'starts a journey' do
  #allow(oystercard).to receive(:touch_in).and_return("Station")
  expect(subject.entrystation("Station")).to eq "Station"
  end

  it 'finishes a journey' do
    subject.entrystation("Station1")
    subject.exitstation("Station2")
    subject.journey
    expect(subject.journeys).to eq [{:entry_station=>"Station1", :exit_station=>"Station2"}]
  end

  it 'returns a fare of a journey' do
    subject.entrystation("Station1")
    subject.exitstation("Station2")
    expect(subject.fare?).to eq 1
  end

  it 'checks if a journey is complete' do
    subject.entrystation("Station1")
    subject.exitstation("Station2")
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
    subject.entrystation("Station1")
    subject.exitstation("Station2")
    subject.journey
    expect(subject.entry_station).to eq nil
  end

  it 'checks a new card has no journey history' do
    expect(subject.journeys).to be_empty
  end


end
