class Types::StationCodeType < Types::BaseObject
  description "A line"

  field :id, ID, null: false
  field :station_code, String, null: false
  field :station, Types::StationType, null: false
end