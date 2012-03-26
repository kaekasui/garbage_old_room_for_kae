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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120326052041) do

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.integer  "blog_category_code"
    t.text     "contents1"
    t.text     "contents2"
    t.boolean  "draft"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "title"
    t.text     "introduction"
    t.string   "path"
    t.boolean  "admin"
    t.boolean  "disable"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "side_menus", :force => true do |t|
    t.integer  "menu_id"
    t.string   "title"
    t.integer  "position"
    t.boolean  "disable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "updated_informations", :force => true do |t|
    t.date     "display_at"
    t.integer  "version_id"
    t.string   "title"
    t.text     "news"
    t.text     "comment"
    t.boolean  "draft"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "mini_label"
    t.string   "mini_label_option"
  end

  create_table "versions", :force => true do |t|
    t.string   "name"
    t.boolean  "used"
    t.boolean  "current"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
