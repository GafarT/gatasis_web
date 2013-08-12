class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :series
      t.text :description
      t.text :specs
      t.string :brand
      t.integer :sub_category_id
      t.text :remarks1
      t.text :remarks2
      t.text :remarks3
      t.text :remarks4

      t.timestamps
    end
  end
end
