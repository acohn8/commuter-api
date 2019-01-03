Types::StationcodeType = GraphQL::ObjectType.define do

  name 'StationCode'

  # it has the following fields
  field :id, types.ID
  field :station_code, types.String
end