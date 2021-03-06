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

ActiveRecord::Schema.define(version: 20160823003358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "name"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email_address"
  end

  create_table "articles", force: :cascade do |t|
    t.string  "title"
    t.string  "url"
    t.integer "user_id"
  end

  create_table "interests", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.string  "title"
    t.text    "description"
    t.string  "url"
    t.integer "user_id"
    t.integer "location_id"
    t.string  "company"
  end

  create_table "location_organizations", force: :cascade do |t|
    t.integer "location_id"
    t.integer "organization_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string  "city"
    t.string  "state"
    t.decimal "latitude",  precision: 15, scale: 10
    t.decimal "longitude", precision: 15, scale: 10
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
  end

  create_table "user_interests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "interest_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "position"
    t.string   "company"
    t.string   "bio"
    t.string   "email_address"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
    t.string   "password_digest"
    t.text     "experience"
    t.integer  "location_id"
  end

end
