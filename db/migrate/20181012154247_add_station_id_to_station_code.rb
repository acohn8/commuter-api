class AddStationIdToStationCode < ActiveRecord::Migration[5.2]
  def change
    add_column :station_codes, :station_id, :integer
  end
end
