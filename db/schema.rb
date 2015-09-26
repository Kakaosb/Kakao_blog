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

ActiveRecord::Schema.define(version: 20150925081507) do

  create_table "potterrs", force: :cascade do |t|
    t.string   "name"
    t.float    "spear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pwheels", force: :cascade do |t|
    t.float    "spear_sum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "potterr_id"
    t.string   "title"
  end

  add_index "pwheels", ["potterr_id"], name: "index_pwheels_on_potterr_id"

  create_table "quests", force: :cascade do |t|
    t.string   "name"
    t.text     "discription"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "pwheel_id"
  end

  add_index "quests", ["pwheel_id"], name: "index_quests_on_pwheel_id"

end
