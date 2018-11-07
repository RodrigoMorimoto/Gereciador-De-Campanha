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

ActiveRecord::Schema.define(version: 20181107193407) do

  create_table "assets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Asset_path"
  end

  create_table "attribute_values", force: :cascade do |t|
    t.string "str_attribute_value"
    t.integer "int_attribute_value"
    t.boolean "bool_attribute_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attributes", force: :cascade do |t|
    t.string "attribute_name"
    t.integer "attribute_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "correlations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Game_name"
    t.string "Game_description"
    t.datetime "Game_date"
  end

  create_table "participations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "Is_master"
  end

  create_table "sheets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Sheet_name"
  end

  create_table "users", force: :cascade do |t|
    t.string "User_name"
    t.string "User_pass"
    t.string "User_email"
    t.string "User_nickname"
    t.string "User_icon"
    t.string "User_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
