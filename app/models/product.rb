class Product < ActiveRecord::Base
	belongs_to :sub_category
	has_many :relation_industries
	has_many :industries, through: :relation_industries
	#
	# This is for paperclip picture
	has_attached_file :product_picture1, :styles => { :medium => "300x300>", :thumb => "100x100>" }, path: "products/:id/:style/1_:id_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end
