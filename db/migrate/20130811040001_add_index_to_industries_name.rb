class AddIndexToIndustriesName < ActiveRecord::Migration
  def change
  	add_index :industries, :name, unique: true
  end
end
