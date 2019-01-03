Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields

  field :allStations, !types[Types::StationType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Station.all }
  end
end