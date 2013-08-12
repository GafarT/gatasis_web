class AddHeaderToIndustries < ActiveRecord::Migration
  def change
    add_column :industries, :header, :string
  end
end
