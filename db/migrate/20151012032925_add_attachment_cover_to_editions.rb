class AddAttachmentCoverToEditions < ActiveRecord::Migration
  def self.up
    change_table :editions do |t|
      t.attachment :cover
      t.attachment :copyright_page
    end
  end

  def self.down
    remove_attachment :editions, :cover
    remove_attachment :editions, :copyright_page
  end
end
