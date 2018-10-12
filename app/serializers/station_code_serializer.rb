class StationCodeSerializer < ActiveModel::Serializer
  attributes :station_code
  belongs_to :station
end
