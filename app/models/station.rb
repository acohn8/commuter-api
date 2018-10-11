class Station < ApplicationRecord
  def fetch_station_info
    url = "https://dcmetrohero.com/api/v1//metrorail/stations/#{station_code}/trains"
    headers = { apiKey: 'bffa0ad2-d611-4025-a289-2bb5a50ee8e7' }
    result = HTTParty.get(url, headers: headers)
    result.response.body
  end
end
