class Types::TrainType < Types::BaseObject
  description "A train"

  field :trainId, String, null: false, hash_key: "trainId"
  field :realTrainId, String, null: false, hash_key: "realTrainId"
  field :car, String, null: false, hash_key: "Car"
  field :destination, String, null: false, hash_key: "Destination"
  field :destinationCode, String, null: false, hash_key: "DestinationCode"
  field :destinationName, String, null: false, hash_key: "DestinationName"
  field :group, String, null: false, hash_key: "Group"
  field :line, String, null: false, hash_key: "Line"
  field :locationCode, String, null: false, hash_key: "LocationCode"
  field :locationName, String, null: false, hash_key: "LocationName"
  field :min, String, null: false, hash_key: "Min"
  field :parentMin, String, null: false, hash_key: "parentMin"
  field :minutesAway, Float, null: false, hash_key: "minutesAway"
  field :maxMinutesAway, Float, null: false, hash_key: "maxMinutesAway"
  field :directionNumber, Int, null: false, hash_key: "directionNumber"
  field :isScheduled, Boolean, null: false, hash_key: "isScheduled"
  field :numPositiveTags, Int, null: false, hash_key: "numPositiveTags"
  field :numNegativeTags, Int, null: false, hash_key: "numNegativeTags"
  field :trackNumber, Int, null: false, hash_key: "trackNumber"
  field :currentStationCode, String, null: false, hash_key: "currentStationCode"
  field :currentStationName, String, null: false, hash_key: "currentStationName"
  field :PreviousStationCode, String, null: false, hash_key: "PreviousStationCode"
  field :previousStationName, String, null: false, hash_key: "previousStationName"
  field :secondsSinceLastMoved, Int, null: false, hash_key: "secondsSinceLastMoved"
  field :isCurrentlyHoldingOrSlow, Boolean, null: false, hash_key: "isCurrentlyHoldingOrSlow"
  field :secondsOffSchedule, Int, null: false, hash_key: "secondsOffSchedule"
  field :trainSpeed, Int, null: true, hash_key: "trainSpeed"
  field :isNotOnRevenueTrack, Boolean, null: false, hash_key: "isNotOnRevenueTrack"
  field :isKeyedDown, Boolean, null: false, hash_key: "isKeyedDown"
  field :wasKeyedDown, Boolean, null: false, hash_key: "wasKeyedDown"
  field :distanceFromNextStation, Int, null: false, hash_key: "distanceFromNextStation"
  field :lat, Float, null: false, hash_key: "lat"
  field :lon, Float, null: false, hash_key: "lon"
  field :direction, Int, null: false, hash_key: "direction"
  field :observedDate, String, null: false, hash_key: "observedDate"
end