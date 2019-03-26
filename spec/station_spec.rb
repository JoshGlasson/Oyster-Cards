require 'station'

describe Station do

  subject {described_class.new(name: "Camden", zone: 1)}

  it 'knows its name' do
    station = Station.new("Camden", 1)
    expect(station.name).to eq("Camden")
  end

  it 'knows its zone' do
    station = Station.new("Camden", 1)
    expect(station.zone).to eq(1)
  end

end
