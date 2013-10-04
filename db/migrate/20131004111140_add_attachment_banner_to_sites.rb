class AddAttachmentBannerToSites < ActiveRecord::Migration
  def self.up
    change_table :sites do |t|
      t.attachment :banner
    end
  end

  def self.down
    drop_attached_file :sites, :banner
  end
end
