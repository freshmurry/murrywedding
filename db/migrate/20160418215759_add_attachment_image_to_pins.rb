class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
  	add_attachment :pins, :image
    change_table :pins do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pins, :image
  end
end