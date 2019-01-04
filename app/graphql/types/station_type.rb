class Types::StationType < Types::BaseObject
  description "A station"

  # it has the following fields
  field :id, ID, null: false
  field :name, String, null: false
  field :address, String, null: false
  field :lat, Float, null: false
  field :lng, Float, null: false
  field :lines, [Types::LineType], null: false
  field :station_codes, [Types::StationCodeType], null: false
end