class RenamePicturesTopicture < ActiveRecord::Migration
  def change
  	remove_attachment :pictures, :image
  	rename_table :pictures, :pictures
  	add_column :pictures, :image_id, :interger

  end
end
 