class AddTelpNoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :telp_no, :text
  end
end
