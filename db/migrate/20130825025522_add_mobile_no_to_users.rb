class AddMobileNoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mobile_no, :text
  end
end
