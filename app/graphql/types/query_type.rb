module Types
  class QueryType < Types::BaseObject
    description 'The query root of this schema'
    field :stations, [Types::StationType], null: false

    def stations
      Station.all.includes(:lines, :station_codes)
    end

    field :lines, [Types::LineType], null: false

    def lines
      Line.all.includes(:stations)
    end

    field :station_codes, [Types::StationCodeType], null: false

    def station_codes
      StationCode.all
    end

    field :station, StationType, null: true do
      description 'Find a station by ID'
      argument :id, ID, required: true
    end

    def station(id:)
      station = Station.find(id)
      station
    end

    field :closest_stations, [Types::StationType], null: true do
      description 'find the closest stations to a pair of coordinates'
      argument :lat, Float, required: true
      argument :lng, Float, required: true
    end

    def closest_stations(lat:, lng:)
      coords = [lat, lng]
      Station.near(coords, 2).includes(:lines)
    end

    field :line, LineType, null: true do
      description 'Find a line by ID'
      argument :id, ID, required: true
    end

    def line(id:)
      Line.find(id)
    end

    field :weather, WeatherType, null: true do
      description 'Get weather and Metro info around a point'
      argument :lat, Float, required: true
      argument :lng, Float, required: true
    end

    def weather(lat:, lng:)
      url = "https://api.darksky.net/forecast/1114b767335760c2ae618d019fe72dd0/#{lat},#{lng}"
      weather_response = HTTParty.get(url)
      JSON.parse(weather_response.body)
    end
  end
end
