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

ActiveRecord::Schema.define(version: 20161124210630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analysis_items", force: :cascade do |t|
    t.integer  "determination_id"
    t.float    "amount"
    t.string   "situation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["determination_id"], name: "index_analysis_items_on_determination_id", using: :btree
  end

  create_table "analytics", force: :cascade do |t|
    t.date     "extracted_at"
    t.string   "extracted_in"
    t.date     "prescribed_at"
    t.string   "prescribed_by"
    t.string   "reason"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.index ["doctor_id"], name: "index_analytics_on_doctor_id", using: :btree
    t.index ["patient_id"], name: "index_analytics_on_patient_id", using: :btree
  end

  create_table "centers", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "group"
  end

  create_table "determinations", force: :cascade do |t|
    t.string   "name"
    t.integer  "chapter_id"
    t.float    "maximun"
    t.float    "minimun"
    t.string   "unit"
    t.string   "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_determinations_on_chapter_id", using: :btree
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.string   "speciality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "center_id"
    t.index ["center_id"], name: "index_doctors_on_center_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "analytics", "doctors"
  add_foreign_key "analytics", "patients"
  add_foreign_key "determinations", "chapters"
  add_foreign_key "doctors", "centers"
end
