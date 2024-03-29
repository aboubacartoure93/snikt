# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151027210725) do

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "user_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "books", ["user_id"], name: "index_books_on_user_id"

  create_table "pages", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pages", ["book_id"], name: "index_pages_on_book_id"

  create_table "pictures", force: :cascade do |t|
    t.string   "xpos"
    t.string   "ypos"
    t.string   "zpos"
    t.boolean  "background"
    t.string   "animations"
    t.integer  "page_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "width"
    t.string   "height"
  end

  add_index "pictures", ["page_id"], name: "index_pictures_on_page_id"

end
