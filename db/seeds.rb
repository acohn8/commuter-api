StationCode.where(station_id: 51).each do |code|
  code.station_id = 23
  code.save
end