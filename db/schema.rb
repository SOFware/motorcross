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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120117044322) do

  create_table "equipment", :force => true do |t|
    t.string   "manufacturer"
    t.string   "model"
    t.integer  "rider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "venue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "begin_date"
    t.date     "end_date"
  end

  create_table "ground_conditions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "races", :force => true do |t|
    t.date     "date"
    t.integer  "track_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "racing_series", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "riders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "session_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "track_id"
    t.integer  "event_id"
    t.integer  "ground_condition_id"
    t.integer  "sky_condition_id"
    t.float    "front_psi"
    t.float    "rear_psi"
    t.integer  "front_tire_id"
    t.integer  "rear_tire_id"
    t.integer  "front_gearing"
    t.integer  "rear_gearing"
    t.float    "fork_spring_rate"
    t.integer  "fork_compression"
    t.integer  "fork_rebound"
    t.float    "shock_spring_rate"
    t.integer  "compression_high"
    t.float    "compression_low"
    t.integer  "rebound"
    t.integer  "sag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "session_type_id"
    t.text     "session_notes"
    t.text     "tire_notes"
    t.text     "suspension_notes"
    t.text     "gearing_notes"
  end

  create_table "sky_conditions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "soils", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "track_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tracks", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "soil_id"
    t.integer  "track_type_id"
    t.integer  "altitude",      :default => 0
    t.integer  "venue_id"
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
