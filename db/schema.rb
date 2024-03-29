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

ActiveRecord::Schema.define(:version => 20120408093435) do

  create_table "access_counts", :force => true do |t|
    t.integer  "menu_id"
    t.date     "access_at"
    t.integer  "cnt"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "admin_menus", :force => true do |t|
    t.integer  "admin_menu_id"
    t.string   "title"
    t.string   "path"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "admin_users", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "blog_comments", :force => true do |t|
    t.integer  "blog_id"
    t.string   "title"
    t.string   "author"
    t.text     "content"
    t.string   "url"
    t.string   "mail"
    t.string   "ip"
    t.string   "host"
    t.string   "password"
    t.string   "salt"
    t.boolean  "admin"
    t.boolean  "mixi"
    t.boolean  "draft"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "blog_links", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "introduction"
    t.string   "url"
    t.integer  "position"
    t.boolean  "draft"
    t.datetime "deleted_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.integer  "blog_category_code"
    t.text     "contents1"
    t.text     "contents2"
    t.boolean  "draft"
    t.datetime "deleted_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "mail_forms", :force => true do |t|
    t.string   "name"
    t.string   "mail"
    t.text     "content"
    t.string   "ip"
    t.string   "host"
    t.boolean  "check"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "menus", :force => true do |t|
    t.string   "title"
    t.text     "introduction"
    t.string   "path"
    t.boolean  "admin"
    t.boolean  "disable"
    t.integer  "position"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "name"
  end

  create_table "side_menus", :force => true do |t|
    t.integer  "menu_id"
    t.string   "title"
    t.integer  "position"
    t.boolean  "disable"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tweets", :force => true do |t|
    t.integer  "user_id"
    t.text     "post"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "updated_informations", :force => true do |t|
    t.date     "display_at"
    t.integer  "version_id"
    t.string   "title"
    t.text     "news"
    t.text     "comment"
    t.boolean  "draft"
    t.datetime "deleted_at"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "mini_label"
    t.string   "mini_label_option"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "screen_name"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "versions", :force => true do |t|
    t.string   "name"
    t.boolean  "used"
    t.boolean  "current"
    t.datetime "deleted_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
