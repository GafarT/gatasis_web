class CreateRelationIndustries < ActiveRecord::Migration
  def change
    create_table :relation_industries do |t|
      t.belongs_to :industry
      t.belongs_to :product

      t.timestamps
    end

    add_index :relation_industries, :industry_id
    add_index :relation_industries, :product_id
    add_index :relation_industries, [:industry_id, :product_id], unique: true
  end
end
