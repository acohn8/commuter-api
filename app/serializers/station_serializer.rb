class StationSerializer < ActiveModel::Serializer
  attributes :id, :station_code, :name, :lat, :lng, :address
end
