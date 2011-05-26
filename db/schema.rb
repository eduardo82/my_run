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

ActiveRecord::Schema.define(:version => 20110526162408) do

  create_table "runs", :force => true do |t|
    t.integer  "user_id"
    t.float    "distance"
    t.date     "day"
    t.integer  "alltime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "average"
    t.float    "calories"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "username"
    t.string   "userpass"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "age"
    t.float    "peso"
    t.integer  "altura"
    t.string   "sexo"
    t.string   "picture_file_name"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

end
