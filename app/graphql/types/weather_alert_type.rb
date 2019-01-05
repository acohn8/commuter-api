class Types::WeatherAlertType < Types::BaseObject
  field :title, String, null: true, hash_key: 'title'
  field :time, Int, null: true, hash_key: 'time'
  field :expries, Int, null: true, hash_key: 'expries'
  field :description, String, null: true, hash_key: 'description'
  field :uri, String, null: true, hash_key: 'uri'
end
