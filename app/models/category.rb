class Category < ActiveRecord::Base
	has_many :sub_categories
	#
	# This is for paperclip picture
	has_attached_file :category_picture1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, path: "category/:id/:style/1_:id_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end
