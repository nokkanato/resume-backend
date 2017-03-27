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

ActiveRecord::Schema.define(version: 20170326213831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string   "last_name"
    t.string   "specialties"
    t.string   "age"
    t.string   "education"
    t.string   "experience"
    t.string   "expected_salary"
    t.string   "fb_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "first_name"
    t.string   "description"
  end

  create_table "categories", force: :cascade do |t|
    t.integer  "card_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "sport"
    t.string   "trainer"
    t.string   "swimmer"
    t.string   "nurse"
    t.string   "teacher"
    t.string   "artist"
    t.string   "creation"
    t.string   "developer"
    t.string   "pilot"
    t.string   "accountance"
    t.string   "babysister"
    t.string   "gambler"
    t.string   "others"
    t.string   "media"
    t.string   "musician"
    t.string   "photographer"
    t.string   "driver"
    t.string   "cook"
    t.string   "gamer"
  end

  create_table "category_cards", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "category_name"
    t.string   "user_id"
  end

  create_table "employee_profiles", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone_no"
  end

  create_table "employer_profiles", force: :cascade do |t|
    t.string   "username"
    t.string   "postion_need"
    t.string   "requirement"
    t.string   "salary_suggest"
    t.string   "description"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "fb_name"
    t.string   "first_name"
    t.string   "last_name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "usertype"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
