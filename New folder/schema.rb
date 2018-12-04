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

ActiveRecord::Schema.define(version: 20181203195947) do

  create_table "assets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Asset_path"
    t.integer "games_id"
    t.index ["games_id"], name: "index_assets_on_games_id"
  end

  create_table "attribute_values", force: :cascade do |t|
    t.string "str_attribute_value"
    t.integer "int_attribute_value"
    t.boolean "bool_attribute_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "attribute_id"
    t.integer "sheet_id"
    t.index ["attribute_id"], name: "index_attribute_values_on_attribute_id"
    t.index ["sheet_id"], name: "index_attribute_values_on_sheet_id"
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
    t.integer "mestre_id"
    t.index ["mestre_id"], name: "index_games_on_mestre_id"
  end

  create_table "mestres", force: :cascade do |t|
    t.string "name"
    t.string "secret"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "Is_master"
    t.integer "games_id"
    t.integer "game_id"
    t.index ["game_id"], name: "index_participations_on_game_id"
    t.index ["games_id"], name: "index_participations_on_games_id"
  end

  create_table "sheet_bs", force: :cascade do |t|
    t.integer "vinculo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vinculo_id"], name: "index_sheet_bs_on_vinculo_id"
  end

  create_table "sheets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Sheet_name"
    t.integer "games_id"
    t.integer "users_id"
    t.index ["games_id"], name: "index_sheets_on_games_id"
    t.index ["users_id"], name: "index_sheets_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "pass"
    t.string "email"
    t.string "nickname"
    t.string "icon"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password"
  end

  create_table "vinculos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
