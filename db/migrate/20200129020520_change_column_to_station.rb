class ChangeColumnToStation < ActiveRecord::Migration[5.2]
  def change
    change_column :stations, :line, :string, null: false
    change_column :stations, :name, :string, null: false
    change_column :stations, :take_minutes, :integer, null: false
  end
end
