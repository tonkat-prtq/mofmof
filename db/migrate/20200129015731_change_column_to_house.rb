class ChangeColumnToHouse < ActiveRecord::Migration[5.2]
  def change
    change_column :houses, :name, :string, null: false
    change_column :houses, :price, :integer, null: false
    change_column :houses, :address, :string, null: false
    change_column :houses, :age, :integer, null: false
    change_column :houses, :comment, :text, null: false
  end
end
