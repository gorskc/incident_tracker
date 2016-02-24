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

ActiveRecord::Schema.define(version: 20160223200546) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "corrective_actions", force: :cascade do |t|
    t.integer  "incident_id"
    t.text     "action"
    t.date     "expected_completion_date"
    t.date     "actual_completion_date"
    t.boolean  "complete"
    t.integer  "incidents_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corrective_actions", ["incidents_id"], name: "index_corrective_actions_on_incidents_id", using: :btree

  create_table "incidents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "department"
    t.string   "job_title"
    t.date     "date_of_hire"
    t.text     "description"
    t.date     "date_of_incident"
    t.date     "date_reported"
    t.text     "location_of_incident"
    t.string   "affected_body_part"
    t.string   "type_of_injury"
    t.string   "type_of_incident"
    t.string   "treatment"
    t.string   "property_damage"
    t.string   "supervisor_last_name"
    t.string   "supervisor_first_name"
    t.text     "suggested_corrective_action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "injuries", force: :cascade do |t|
    t.integer  "incident_id"
    t.string   "injury_type"
    t.string   "affected_body_part"
    t.string   "treatment"
    t.integer  "incidents_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "injuries", ["incidents_id"], name: "index_injuries_on_incidents_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "corrective_actions", "incidents"
  add_foreign_key "injuries", "incidents"
end
