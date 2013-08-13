class CreateFrontpages < ActiveRecord::Migration
  def change
    create_table :frontpages do |t|
      t.string :carousel_caption1
      t.string :carousel_lead1
      t.string :carousel_caption2
      t.string :carousel_lead2
      t.string :carousel_caption3
      t.string :carousel_lead3
      t.string :marketing_heading1
      t.text :marketing_desc1
      t.string :marketing_heading2
      t.text :marketing_desc2
      t.string :marketing_heading3
      t.text :marketing_desc3

      t.timestamps
    end
  end
end
