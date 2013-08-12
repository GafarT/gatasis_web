class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :products
	#
	# This is for paperclip picture
	has_attached_file :sub_category_picture1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, path: "sub_category/:id/:style/1_:id_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end
