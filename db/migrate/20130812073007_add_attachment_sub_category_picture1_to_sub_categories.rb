class AddAttachmentSubCategoryPicture1ToSubCategories < ActiveRecord::Migration
  def self.up
    change_table :sub_categories do |t|
      t.attachment :sub_category_picture1
    end
  end

  def self.down
    drop_attached_file :sub_categories, :sub_category_picture1
  end
end
