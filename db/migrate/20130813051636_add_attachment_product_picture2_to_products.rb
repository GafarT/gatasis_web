class AddAttachmentProductPicture2ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :product_picture2
    end
  end

  def self.down
    drop_attached_file :products, :product_picture2
  end
end
