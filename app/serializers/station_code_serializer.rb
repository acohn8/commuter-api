class StationCodeSerializer < ActiveModel::Serializer
  attributes :station_code, :id, :station_id
  belongs_to :station
end
