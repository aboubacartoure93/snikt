class AddAttachmentLocationToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :location
      t.string :name
      t.timestamp null: false
    end
  end
end
