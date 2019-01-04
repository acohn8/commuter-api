module Types
  class QueryType < Types::BaseObject
    description "The query root of this schema"
    field :stations, [Types::StationType], null: false

    def stations
      Station.all
    end

    field :lines, [Types::LineType], null: false

    def lines
      Line.all
    end

    field :station_codes, [Types::StationCodeType], null: false

    def station_codes
      StationCode.all
    end


    field :station, StationType, null: true do
      description "Find a station by ID"
      argument :id, ID, required: true
    end

    def station(id:)
      Station.find(id)
    end

    field :line, LineType, null: true do
      description "Find a line by ID"
      argument :id, ID, required: true
    end

    def line(id:)
      Line.find(id)
    end
  end
end
