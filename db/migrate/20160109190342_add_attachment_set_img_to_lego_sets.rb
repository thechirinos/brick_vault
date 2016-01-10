class AddAttachmentSetImgToLegoSets < ActiveRecord::Migration
  def self.up
    change_table :lego_sets do |t|
      t.attachment :set_img
    end
  end

  def self.down
    remove_attachment :lego_sets, :set_img
  end
end
