module Api
  module V1
    class ForecastsController < ApplicationController
      def get_forecast
        lat = params['lat']
        lng = params['lng']
        url = "https://api.darksky.net/forecast/1114b767335760c2ae618d019fe72dd0/#{lat},#{lng}"
        weather = HTTParty.get(url)
        render json: weather
      end
    end
  end
end
