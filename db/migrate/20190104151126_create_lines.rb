class CreateLines < ActiveRecord::Migration[5.2]
  def change
    create_table :lines do |t|

      t.timestamps
    end
  end
end
