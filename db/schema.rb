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

ActiveRecord::Schema.define(version: 2018_07_07_041003) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consses", force: :cascade do |t|
    t.string "name"
    t.string "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facedets", force: :cascade do |t|
    t.string "imagone"
    t.string "imagtwo"
    t.string "imagthree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "noplate"
    t.string "outtime"
    t.string "status"
  end

  create_table "screen1s", force: :cascade do |t|
    t.float "Mode"
    t.float "Power"
    t.float "Gen"
    t.float "rotor"
    t.float "wind"
    t.float "pitch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screen2s", force: :cascade do |t|
    t.float "Gen0"
    t.float "Gen1"
    t.float "Gen2"
    t.float "product"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screen3s", force: :cascade do |t|
    t.float "Total"
    t.float "Link_ok"
    t.float "Turbine_ok"
    t.float "Run"
    t.float "Gen1"
    t.float "Gen2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screen5s", force: :cascade do |t|
    t.float "Power"
    t.float "Cosphi"
    t.float "freq"
    t.float "L1_Voltage"
    t.float "L1_Current"
    t.float "L2_voltage"
    t.float "L2_Current"
    t.float "L3_voltage"
    t.float "L3_current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screen6s", force: :cascade do |t|
    t.float "Ambi"
    t.float "Gear"
    t.float "Gen1"
    t.float "Gen2"
    t.float "Nacel"
    t.float "Cntrl"
    t.float "Hydr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screen_ones", force: :cascade do |t|
    t.string "mod"
    t.float "power"
    t.float "gen"
    t.float "rotor"
    t.float "wind"
    t.float "pitch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "screenones", force: :cascade do |t|
    t.string "mod"
    t.float "power"
    t.float "gen"
    t.float "rotor"
    t.float "wind"
    t.float "pitch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spinners", force: :cascade do |t|
    t.string "username"
    t.string "windform"
    t.string "windmill"
    t.boolean "millactive"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_data", id: false, force: :cascade do |t|
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "username"
    t.string "password"
    t.string "dob"
    t.string "gender"
    t.string "phone"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "role"
    t.string "windformid"
    t.string "authentication_token", limit: 30
    t.string "empty"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
  end

  create_table "videoanalytics", force: :cascade do |t|
    t.string "noplate"
    t.string "intime"
    t.string "outtime"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "windforms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "windmills", force: :cascade do |t|
    t.string "millid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
