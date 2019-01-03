Types::StationType = GraphQL::ObjectType.define do

  name 'Station'

  # it has the following fields
  field :id, !types.Int
  field :name, !types.String
  field :address, !types.String
  field :lat, !types.Float
  field :lng, !types.Float
end