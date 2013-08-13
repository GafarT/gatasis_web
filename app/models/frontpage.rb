class Frontpage < ActiveRecord::Base
	# This is for paperclip carousel_pic1
	has_attached_file :carousel_pic1, :styles => { :original => "1500x550", :thumb => "200x200>" }, path: "carousels/:style/1_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

    # This is for paperclip carousel_pic2
	has_attached_file :carousel_pic2, :styles => { :original => "1500x550", :thumb => "200x200>" }, path: "carousels/:style/2_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

    # This is for paperclip carousel_pic3
	has_attached_file :carousel_pic3, :styles => { :original => "1500x550", :thumb => "200x200>" }, path: "carousels/:style/3_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

    # This is for paperclip marketing_pic1
	has_attached_file :marketing_pic1, :styles => { :original => "140x140>" }, path: "marketings/1_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

    # This is for paperclip marketing_pic2
	has_attached_file :marketing_pic2, :styles => { :original => "140x140>" }, path: "marketings/2_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

    # This is for paperclip marketing_pic3
	has_attached_file :marketing_pic3, :styles => { :original => "140x140>" }, path: "marketings/3_:filename",
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")
end
