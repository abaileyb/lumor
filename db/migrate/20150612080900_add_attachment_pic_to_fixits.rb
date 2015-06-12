class AddAttachmentPicToFixits < ActiveRecord::Migration
  def self.up
    change_table :fixits do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :fixits, :pic
  end
end
