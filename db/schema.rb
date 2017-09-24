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

ActiveRecord::Schema.define(version: 20170924195530) do

  create_table "candidates", force: :cascade do |t|
    t.integer "voter_id"
    t.string "screen_name"
    t.integer "party_id"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_id"], name: "index_candidates_on_party_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
    t.string "initials", limit: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["initials"], name: "index_parties_on_initials", unique: true
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "initials", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["initials"], name: "index_states_on_initials", unique: true
    t.index ["name"], name: "index_states_on_name", unique: true
  end

  create_table "voters", force: :cascade do |t|
    t.string "first_name"
    t.string "surname"
    t.string "email"
    t.string "password_digest"
    t.string "token"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin"
    t.index ["email"], name: "index_voters_on_email", unique: true
    t.index ["token"], name: "index_voters_on_token", unique: true
  end

end
