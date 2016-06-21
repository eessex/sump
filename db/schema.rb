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

ActiveRecord::Schema.define(version: 20160620174011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
  end

  create_table "artists_events", id: false, force: :cascade do |t|
    t.integer "artist_id", null: false
    t.integer "event_id",  null: false
    t.index ["artist_id", "event_id"], name: "index_artists_events_on_artist_id_and_event_id", using: :btree
    t.index ["event_id", "artist_id"], name: "index_artists_events_on_event_id_and_artist_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.string  "name"
    t.string  "date"
    t.integer "price"
    t.string  "description"
    t.string  "image"
    t.integer "presenter_id"
    t.string  "url"
    t.boolean "upcoming"
    t.index ["presenter_id"], name: "index_events_on_presenter_id", using: :btree
  end

  create_table "images", force: :cascade do |t|
    t.string  "title"
    t.string  "description"
    t.string  "source"
    t.integer "event_id"
  end

  create_table "presenters", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "url"
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
