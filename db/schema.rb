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

ActiveRecord::Schema.define(:version => 20131025034207) do

  create_table "bars", :force => true do |t|
    t.string "name"
    t.string "address"
    t.string "bar_url"
    t.text   "bar_info"
    t.float  "latitude"
    t.float  "longitude"
  end

  create_table "cocktails", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.text     "recipe"
    t.string   "flavor"
    t.string   "liquor"
    t.string   "photo_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "favorites", :force => true do |t|
    t.integer  "cocktail_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
