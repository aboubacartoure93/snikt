class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.references :user, index: true, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end
