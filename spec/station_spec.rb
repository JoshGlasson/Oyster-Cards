require 'station'

describe Station do

  subject {described_class.new(name: "Camden")}

  it 'knows its name' do
    station = Station.new("Camden")
    expect(station.name).to eq("Camden")
  end

  it 'knows its zone' do
    station = Station.new("Camden")
    expect(station.zone).to eq(1)
  end

end
