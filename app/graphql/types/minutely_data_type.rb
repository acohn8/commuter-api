class Types::MinutelyDataType < Types::BaseObject
  field :time, Int, null: true, hash_key: 'time'
  field :precipIntensity, Float, null: true, hash_key: 'precipIntensity'
  field :precipIntensityError, Float, null: true, hash_key: 'precipIntensityError'
  field :precipProbability, Float, null: true, hash_key: 'precipProbability'
  field :precipType, String, null: true, hash_key: 'precipType'
end
