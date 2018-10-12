module Api
  module V1
    class StationsController < ApplicationController
      def show
        @station = Station.find_by(station_code: params["station_code"])
        render json: @station.fetch_station_info
      end

      def index
        render json: Station.all
      end

      def sort_stations
        lat = params["lat"]
        lng = params["lng"]
        coords = [lat, lng].map(&:to_f)
        render json: Station.near(coords, 2)
      end
    end
  end
end
