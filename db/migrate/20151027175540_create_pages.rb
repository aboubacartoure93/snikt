class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.references :book, index: true, foreign_key: true
      t.integer :position

      t.timestamps null: false
    end
  end
end
