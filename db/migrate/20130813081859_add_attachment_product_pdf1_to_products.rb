class AddAttachmentProductPdf1ToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :product_pdf1
    end
  end

  def self.down
    drop_attached_file :products, :product_pdf1
  end
end
