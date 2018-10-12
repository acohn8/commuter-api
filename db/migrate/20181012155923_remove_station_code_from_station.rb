class RemoveStationCodeFromStation < ActiveRecord::Migration[5.2]
  def change
    remove_column :stations, :station_code, :string
  end
end
