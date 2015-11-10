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

ActiveRecord::Schema.define(version: 20151110113443) do

  create_table "admins", force: true do |t|
    t.string   "login",           limit: nil
    t.string   "password_digest", limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",  limit: nil
  end

  add_index "admins", ["remember_token"], name: "index_admins_on_remember_token"

  create_table "blog_arts", force: true do |t|
    t.string   "title",      limit: nil
    t.text     "content"
    t.string   "tags",       limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "blog_programms", force: true do |t|
    t.string   "title",      limit: nil
    t.text     "content"
    t.string   "tags",       limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "blog_sports", force: true do |t|
    t.string   "title",      limit: nil
    t.text     "content"
    t.string   "tags",       limit: nil
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "redactor_assets", force: true do |t|
    t.integer  "admin_id"
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "redactor_assets", ["assetable_type", "assetable_id"], name: "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_redactor_assetable_type"

end
