class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :xpos
      t.string :ypos
      t.string :zpos
      t.boolean :background
      t.string :animations
      t.references :page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
