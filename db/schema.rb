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

ActiveRecord::Schema.define(version: 2020_01_13_060148) do

  create_table "gomi_calendars", force: :cascade do |t|
    t.date "date"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sensors", force: :cascade do |t|
    t.decimal "temperature", precision: 4, scale: 1
    t.decimal "humidity", precision: 4, scale: 1
    t.decimal "illumination", precision: 4, scale: 1
    t.decimal "movement", precision: 4, scale: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "name", null: false
    t.string "url"
    t.boolean "is_empty", default: false
    t.integer "sort_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
