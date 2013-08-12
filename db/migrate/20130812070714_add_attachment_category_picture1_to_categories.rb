class AddAttachmentCategoryPicture1ToCategories < ActiveRecord::Migration
  def self.up
    change_table :categories do |t|
      t.attachment :category_picture1
    end
  end

  def self.down
    drop_attached_file :categories, :category_picture1
  end
end
