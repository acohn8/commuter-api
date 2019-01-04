class Mutations::FetchTrains < GraphQL::Schema::Mutation
  null true

  argument :station_code, String, required: true

  field :trains, [Types::TrainType], null: false
  # field :errors, [String], null: false

  def resolve(station_code:)
    url = "https://dcmetrohero.com/api/v1/metrorail/stations/#{station_code}/trains"
    headers = { apiKey: 'bffa0ad2-d611-4025-a289-2bb5a50ee8e7' }
    result = HTTParty.get(url, headers: headers)
    trains = JSON.parse(result.response.body)
    {
      trains: trains
    }


  end
end