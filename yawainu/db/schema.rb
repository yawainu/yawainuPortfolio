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

ActiveRecord::Schema.define(version: 20160528150001) do

  create_table "categories", force: :cascade do |t|
    t.string   "title",      limit: 255, default: "Category", null: false
    t.boolean  "flag",       limit: 1,   default: false,      null: false
    t.integer  "user_id",    limit: 4,                        null: false
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "categories", ["user_id"], name: "index_categories_on_user_id", using: :btree

  create_table "covers", force: :cascade do |t|
    t.string   "image",      limit: 255
    t.boolean  "flag",       limit: 1,   default: false, null: false
    t.integer  "user_id",    limit: 4,                   null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "covers", ["user_id"], name: "index_covers_on_user_id", using: :btree

  create_table "displays", force: :cascade do |t|
    t.boolean  "cover",      limit: 1, default: false, null: false
    t.boolean  "gallery",    limit: 1, default: false, null: false
    t.boolean  "work",       limit: 1, default: false, null: false
    t.boolean  "contact",    limit: 1, default: false, null: false
    t.integer  "user_id",    limit: 4,                 null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "displays", ["user_id"], name: "index_displays_on_user_id", using: :btree

  create_table "galleries", force: :cascade do |t|
    t.string   "image",       limit: 255
    t.string   "title",       limit: 255
    t.text     "comment",     limit: 65535
    t.boolean  "flag",        limit: 1,     default: false, null: false
    t.integer  "category_id", limit: 4,                     null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "galleries", ["category_id"], name: "index_galleries_on_category_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",            limit: 255,                       null: false
    t.string   "title",            limit: 255,                       null: false
    t.text     "comment",          limit: 65535,                     null: false
    t.string   "main_color",       limit: 255,   default: "#212121"
    t.string   "sub_color",        limit: 255,   default: "#2196F3"
    t.string   "crypted_password", limit: 255,                       null: false
    t.string   "salt",             limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image",            limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "works", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.text     "comment",    limit: 65535
    t.boolean  "flag",       limit: 1,     default: false, null: false
    t.integer  "user_id",    limit: 4,                     null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "works", ["user_id"], name: "index_works_on_user_id", using: :btree

end
