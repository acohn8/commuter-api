class Types::HourlyWeatherType < Types::BaseObject
  description 'Hourly weather response'
  field :summary, String, null: true, hash_key: 'summary'
  field :icon, String, null: true, hash_key: 'icon'
  field :data, [HourlyDataType], null: true, hash_key: 'data'
end

