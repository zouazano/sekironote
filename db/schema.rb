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

ActiveRecord::Schema.define(version: 2019_06_17_195742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boss_logs", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "boss_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "death_count", default: 0
    t.text "comment"
    t.integer "difficulty"
    t.integer "play_time"
    t.integer "lap"
    t.boolean "done", default: false, null: false
    t.integer "medicine_count"
    t.string "item"
    t.string "link"
    t.index ["boss_id"], name: "index_boss_logs_on_boss_id"
    t.index ["user_id"], name: "index_boss_logs_on_user_id"
  end

  create_table "bosses", force: :cascade do |t|
    t.string "name"
    t.string "image_uid"
    t.text "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "average_death_counts"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "image_uid"
    t.text "profile"
    t.integer "lap"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "boss_logs", "bosses"
  add_foreign_key "boss_logs", "users"
end
