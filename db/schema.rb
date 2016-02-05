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

ActiveRecord::Schema.define(version: 20160203203154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "incidents", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "department"
    t.string   "job_title"
    t.date     "date_of_hire"
    t.text     "description"
    t.datetime "date_of_incident"
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

end
