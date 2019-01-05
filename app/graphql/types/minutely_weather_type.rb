class Types::MinutelyWeatherType < Types::BaseObject
  description 'Minutely weather response'

  field :summary, String, null: true, hash_key: 'summary'
  field :icon, String, null: true, hash_key: 'icon'
  field :data, [MinutelyDataType], null: true, hash_key: 'data'
end

