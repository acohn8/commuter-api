class Station < ApplicationRecord
  has_many :station_codes
  has_many :station_lines
  has_many :lines, through: :station_lines
  geocoded_by :address, latitude: :lat, longitude: :lng

  def fetch_station_info
    results = []
    station_codes.each do |sc|
      url = "https://dcmetrohero.com/api/v1//metrorail/stations/#{sc.station_code}/trains"
      headers = { apiKey: 'bffa0ad2-d611-4025-a289-2bb5a50ee8e7' }
      result = HTTParty.get(url, headers: headers)
      results << JSON.parse(result.response.body)
    end
    results.flatten
  end
end
