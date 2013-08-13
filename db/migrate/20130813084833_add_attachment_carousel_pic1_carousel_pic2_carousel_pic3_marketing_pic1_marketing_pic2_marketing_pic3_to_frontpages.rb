class AddAttachmentCarouselPic1CarouselPic2CarouselPic3MarketingPic1MarketingPic2MarketingPic3ToFrontpages < ActiveRecord::Migration
  def self.up
    change_table :frontpages do |t|
      t.attachment :carousel_pic1
      t.attachment :carousel_pic2
      t.attachment :carousel_pic3
      t.attachment :marketing_pic1
      t.attachment :marketing_pic2
      t.attachment :marketing_pic3
    end
  end

  def self.down
    drop_attached_file :frontpages, :carousel_pic1
    drop_attached_file :frontpages, :carousel_pic2
    drop_attached_file :frontpages, :carousel_pic3
    drop_attached_file :frontpages, :marketing_pic1
    drop_attached_file :frontpages, :marketing_pic2
    drop_attached_file :frontpages, :marketing_pic3
  end
end
