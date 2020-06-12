# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_12_171333) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "covid19_clinics", force: :cascade do |t|
    t.string "province"
    t.string "district"
    t.string "name"
    t.string "phone"
    t.boolean "sampling"
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "maskstores", force: :cascade do |t|
    t.string "group"
    t.string "code"
    t.string "name"
    t.string "address"
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shelters", force: :cascade do |t|
    t.string "name"
    t.string "division"
    t.string "type_name"
    t.string "type_division"
    t.string "road_address"
    t.string "depr_address"
    t.string "y"
    t.string "x"
    t.string "max_area"
    t.string "max_count"
    t.string "status"
    t.string "phone"
    t.string "etc"
    t.string "emergency_area"
    t.integer "emergency_area_houses"
    t.integer "emergency_area_people"
    t.integer "emergency_area_people_vulnerable"
    t.string "is_seismic"
    t.string "seismic_level"
    t.integer "distance_to_shore"
    t.integer "elevation"
    t.integer "count_earthquake_signs"
    t.integer "count_emergency_area_signs"
    t.integer "count_earthquake_road_signs"
    t.string "maintenance_agency"
    t.string "agency_phone"
    t.string "uploaded_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
