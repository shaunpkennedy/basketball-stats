# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_03_09_195904) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.date "date"
    t.string "opponent_team_name"
    t.string "city"
    t.boolean "is_victory"
    t.boolean "is_home_team"
    t.integer "score"
    t.integer "opponent_score"
    t.bigint "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_games_on_team_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "two_pointers_made"
    t.integer "two_pointers_attempted"
    t.integer "three_pointers_made"
    t.integer "three_pointers_attempted"
    t.integer "free_throws_made"
    t.integer "free_throws_attempted"
    t.integer "assists"
    t.integer "rebounds"
    t.integer "steals"
    t.integer "blocks"
    t.integer "fouls"
    t.boolean "started_game"
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_stats_on_game_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "games", "teams"
  add_foreign_key "stats", "games"
end
