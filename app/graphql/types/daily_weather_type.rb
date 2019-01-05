class Types::DailyWeatherType < Types::BaseObject
  description 'Daily weather response'
  field :summary, String, null: true, hash_key: 'summary'
  field :icon, String, null: true, hash_key: 'icon'
  field :data, [DailyDataType], null: true, hash_key: 'data'
end
