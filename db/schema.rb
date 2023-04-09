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

ActiveRecord::Schema.define(version: 2020_06_17_093534) do

  create_table "entries", force: :cascade do |t|
    t.string "user_name"
    t.string "user_email"
    t.date "reserved_date"
    t.float "reserved_time"
    t.integer "room_id"
    t.integer "people"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_email"], name: "index_entries_on_user_email", unique: true
  end

  create_table "rooms", force: :cascade do |t|
    t.string "name"
    t.string "place"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "terms_of_use"
  end

end
