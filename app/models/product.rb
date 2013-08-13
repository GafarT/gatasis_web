class Product < ActiveRecord::Base
	belongs_to :sub_category
	has_many :relation_industries
	has_many :industries, through: :relation_industries
	#
	# This is for paperclip picture1
	has_attached_file :product_picture1, :styles => { :original => "420x420>", :medium => "190x190>", :thumb => "100x100>" }, path: "products/:id/:style/1_:id_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

    #
	# This is for paperclip picture2
	has_attached_file :product_picture2, :styles => { :medium => "200x200>" }, path: "products/:id/:style/2_:id_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

    #
	# This is for paperclip picture3
	has_attached_file :product_picture3, :styles => { :medium => "200x200>" }, path: "products/:id/:style/3_:id_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

    #
	# This is for paperclip product_pdf1
	has_attached_file :product_pdf1, path: "products/:id/:style/pdf1_:id_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end
