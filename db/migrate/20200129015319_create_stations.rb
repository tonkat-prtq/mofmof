class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :line
      t.string :name
      t.integer :take_minutes

      t.timestamps
    end
  end
end
