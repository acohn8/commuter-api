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
        @lat = params["lat"]
        @lng = params["lng"]
        byebug
      end
    end
  end
end
