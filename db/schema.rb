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

ActiveRecord::Schema.define(version: 20160225002602) do

  create_table "corrective_actions", force: :cascade do |t|
    t.integer  "incident_id",              limit: 4
    t.text     "action",                   limit: 65535
    t.date     "expected_completion_date"
    t.date     "actual_completion_date"
    t.boolean  "complete"
    t.integer  "incidents_id",             limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "corrective_actions", ["incident_id"], name: "fk_rails_9aac145ab5", using: :btree
  add_index "corrective_actions", ["incidents_id"], name: "index_corrective_actions_on_incidents_id", using: :btree

  create_table "incidents", force: :cascade do |t|
    t.string   "first_name",                  limit: 255
    t.string   "last_name",                   limit: 255
    t.string   "department",                  limit: 255
    t.string   "job_title",                   limit: 255
    t.date     "date_of_hire"
    t.text     "description",                 limit: 65535
    t.date     "date_of_incident"
    t.date     "date_reported"
    t.text     "location_of_incident",        limit: 65535
    t.string   "type_of_incident",            limit: 255
    t.string   "property_damage",             limit: 255
    t.string   "supervisor_last_name",        limit: 255
    t.string   "supervisor_first_name",       limit: 255
    t.text     "suggested_corrective_action", limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "injuries", force: :cascade do |t|
    t.integer  "incident_id",        limit: 4
    t.string   "injury_type",        limit: 255
    t.string   "affected_body_part", limit: 255
    t.string   "treatment",          limit: 255
    t.integer  "incidents_id",       limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "injuries", ["incident_id"], name: "fk_rails_b46b812078", using: :btree
  add_index "injuries", ["incidents_id"], name: "index_injuries_on_incidents_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "corrective_actions", "incidents"
  add_foreign_key "injuries", "incidents"
end
