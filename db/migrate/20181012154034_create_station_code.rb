class CreateStationCode < ActiveRecord::Migration[5.2]
  def change
    create_table :station_codes do |t|
      t.string :station_code
    end
  end
end
