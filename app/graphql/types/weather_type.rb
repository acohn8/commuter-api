class Types::WeatherType < Types::BaseObject
  field :latitude, Float, null: true, hash_key: 'latitude'
  field :longitude, Float, null: true, hash_key: 'longitude'
  field :timezone, String, null: true, hash_key: 'timezone'
  field :currently, Types::CurrentWeatherType, null: true, hash_key: 'currently'
  field :minutely, Types::MinutelyWeatherType, null: true, hash_key: 'minutely'
  field :hourly, Types::HourlyWeatherType, null: true, hash_key: 'hourly'
  field :daily, Types::DailyWeatherType, null: true, hash_key: 'daily'
  field :alerts, [Types::WeatherAlertType], null: true, hash_key: 'alerts'
end
