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

ActiveRecord::Schema.define(version: 2019_10_12_083414) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "identities", force: :cascade do |t|
    t.string "name"
    t.string "nik"
    t.string "nationality"
    t.string "gender"
    t.string "district"
    t.string "regional"
    t.string "religion"
    t.string "image_identity_card"
    t.string "occupation"
    t.date "birth_date"
    t.text "address"
    t.integer "rt"
    t.integer "rw"
    t.integer "city_id"
    t.integer "province_id"
    t.integer "martial_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.integer "code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
