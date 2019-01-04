class Types::LineType < Types::BaseObject
  description "A line"

  field :id, ID, null: false
  field :name, String, null: false
end