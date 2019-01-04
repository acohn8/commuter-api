class Types::StationType < Types::BaseObject
  description 'A station'

  field :id, ID, null: false
  field :name, String, null: false
  field :address, String, null: false
  field :lat, Float, null: false
  field :lng, Float, null: false
  field :lines, [Types::LineType], null: false
  field :station_codes, [Types::StationCodeType], null: false
  field :trains, [Types::TrainType], null: false
  field :distance, Float, null: true do
    argument :lat, Float, required: true
    argument :lng, Float, required: true
  end

  def trains
    all_trains = []
    codes = station_codes.map { |c| c.station_code }
    codes.each do |code|
      url = "https://dcmetrohero.com/api/v1/metrorail/stations/#{code}/trains"
      headers = { apiKey: 'bffa0ad2-d611-4025-a289-2bb5a50ee8e7' }
      result = HTTParty.get(url, headers: headers)
      trains = JSON.parse(result.response.body)
      all_trains << trains
    end
    all_trains.flatten
  end

  def distance(lat:, lng:)
    station = Station.find(id)
    station.distance_to([lat, lng])
  end
end
