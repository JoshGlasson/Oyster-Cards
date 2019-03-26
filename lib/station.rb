
class Station
attr_reader :name, :zone, :zones

@zones = [
  { "name" => "City of London", "zone" => 1 },
  { "name" => "Camden", "zone" => 1 },
  { "name" => "Hackney", "zone" => 1 },
  { "name" => "Islington", "zone" => 1 },
  { "name" => "Kensington & Chelsea", "zone" => 1 },
  { "name" => "Lambeth", "zone" => 1 },
  { "name" => "Southwark", "zone" => 1 },
  { "name" => "Tower Hamlets", "zone" => 1 },
  { "name" => "Westminster", "zone" => 1 },
  { "name" => "Greenwich", "zone" => 2 },
  { "name" => "Hammersmith & Fulham", "zone" => 2 },
  { "name" => "Lewisham", "zone" => 2 },
  { "name" => "Wandsworth", "zone" => 2 },
  { "name" => "Brent", "zone" => 2 },
  { "name" => "Ealing", "zone" => 2 },
  { "name" => "Hounslow", "zone" => 2 },
  { "name" => "Newham", "zone" => 2 },
  { "name" => "Barnet", "zone" => 3 },
  { "name" => "Bromley", "zone" => 3 },
  { "name" => "Croyden", "zone" => 3 },
  { "name" => "Haringey", "zone" => 3 },
  { "name" => "Merton", "zone" => 3 },
  { "name" => "Richmond upon Thames", "zone" => 3 },
  { "name" => "Waltham Forest", "zone" => 3 },
  { "name" => "Barking and Dagenham", "zone" => 4 },
  { "name" => "Bexley", "zone" => 4 },
  { "name" => "Enfield", "zone" => 4 },
  { "name" => "Redbridge", "zone" => 4 },
  { "name" => "Sutton", "zone" => 4 },
  { "name" => "Kingston upon Thames", "zone" => 4 },
  { "name" => "Epping Forest", "zone" => 4 },
  { "name" => "Harrow", "zone" => 5 },
  { "name" => "Hillingdon", "zone" => 5 },
  { "name" => "Epsom", "zone" => 5 },
  { "name" => "Ewell", "zone" => 5 },
  { "name" => "Elmbridge", "zone" => 6 },
  { "name" => "Hertsmere", "zone" => 6 },
  { "name" => "Reigate and Banstead", "zone" => 6 },
  { "name" => "Tandridge", "zone" => 6 },
  { "name" => "Three Rivers", "zone" => 6 }
]
  def initialize(name, zone = @zone)
    @name = name
    @zones = [
      { "name" => "City of London", "zone" => 1 },
      { "name" => "Camden", "zone" => 1 },
      { "name" => "Hackney", "zone" => 1 },
      { "name" => "Islington", "zone" => 1 },
      { "name" => "Kensington & Chelsea", "zone" => 1 },
      { "name" => "Lambeth", "zone" => 1 },
      { "name" => "Southwark", "zone" => 1 },
      { "name" => "Tower Hamlets", "zone" => 1 },
      { "name" => "Westminster", "zone" => 1 },
      { "name" => "Greenwich", "zone" => 2 },
      { "name" => "Hammersmith & Fulham", "zone" => 2 },
      { "name" => "Lewisham", "zone" => 2 },
      { "name" => "Wandsworth", "zone" => 2 },
      { "name" => "Brent", "zone" => 2 },
      { "name" => "Ealing", "zone" => 2 },
      { "name" => "Hounslow", "zone" => 2 },
      { "name" => "Newham", "zone" => 2 },
      { "name" => "Barnet", "zone" => 3 },
      { "name" => "Bromley", "zone" => 3 },
      { "name" => "Croyden", "zone" => 3 },
      { "name" => "Haringey", "zone" => 3 },
      { "name" => "Merton", "zone" => 3 },
      { "name" => "Richmond upon Thames", "zone" => 3 },
      { "name" => "Waltham Forest", "zone" => 3 },
      { "name" => "Barking and Dagenham", "zone" => 4 },
      { "name" => "Bexley", "zone" => 4 },
      { "name" => "Enfield", "zone" => 4 },
      { "name" => "Redbridge", "zone" => 4 },
      { "name" => "Sutton", "zone" => 4 },
      { "name" => "Kingston upon Thames", "zone" => 4 },
      { "name" => "Epping Forest", "zone" => 4 },
      { "name" => "Harrow", "zone" => 5 },
      { "name" => "Hillingdon", "zone" => 5 },
      { "name" => "Epsom", "zone" => 5 },
      { "name" => "Ewell", "zone" => 5 },
      { "name" => "Elmbridge", "zone" => 6 },
      { "name" => "Hertsmere", "zone" => 6 },
      { "name" => "Reigate and Banstead", "zone" => 6 },
      { "name" => "Tandridge", "zone" => 6 },
      { "name" => "Three Rivers", "zone" => 6 }
    ]
    @zones.each do |y|
      if y["name"] == name
        @zone = y["zone"]
      end
    end
  end

end
