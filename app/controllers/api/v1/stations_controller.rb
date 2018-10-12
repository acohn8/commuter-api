module Api
  module V1
    class StationsController < ApplicationController

      def show
        station_code = StationCode.find_by(station_code: params["station_code"])
        @station = station_code.station
        render json: @station.fetch_station_info
      end

      def index
        render json: Station.all.includes(:station_codes).to_json(include: { station_codes: { only: :station_code } })
      end

      def sort_stations
        lat = params["lat"]
        lng = params["lng"]
        coords = [lat, lng].map(&:to_f)
        render json: Station.near(coords, 2).to_json(include: { station_codes: { only: :station_code } })
      end

    end
  end
end
