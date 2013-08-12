class AddAttachmentProductPicture1ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :product_picture1
    end
  end

  def self.down
    drop_attached_file :products, :product_picture1
  end
end
