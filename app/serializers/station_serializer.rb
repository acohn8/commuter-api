class StationSerializer < ActiveModel::Serializer
  attributes :id, :name, :lat, :lng, :address
end
