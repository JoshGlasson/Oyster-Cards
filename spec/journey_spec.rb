require 'journey'

describe Journey do
  let(:oystercard){ double :oystercard }

  it 'starts a journey' do
  #allow(oystercard).to receive(:touch_in).and_return("Station")
  expect(subject.entry_station("Station")).to eq "Station"
  end

  it 'finishes a journey' do
    subject.entry_station("Station1")
    subject.exit_station("Station2")
    subject.journey
    expect(subject.journeys).to eq [{:entry_station=>"Station1", :exit_station=>"Station2"}]
  end

  it 'returns a fare of a journey' do
    expect(subject.fare).to eq 1
  end

  it 'checks if a journey is complete' do
    subject.entry_station("Station1")
    subject.exit_station("Station2")
    subject.journey
    expect(subject.in_journey?).to eq false
  end
end
