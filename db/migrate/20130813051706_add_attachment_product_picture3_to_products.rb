class AddAttachmentProductPicture3ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :product_picture3
    end
  end

  def self.down
    drop_attached_file :products, :product_picture3
  end
end
