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

ActiveRecord::Schema.define(version: 2023_09_04_142008) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_volunteers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_active_volunteers_on_organization_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_admins_on_organization_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.date "birth_day"
    t.string "email"
    t.integer "gender", default: 1
    t.date "join_date"
    t.string "password_digest"
    t.string "phone_number"
    t.boolean "is_admin", default: false
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_employees_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.integer "number_employee"
    t.string "phone_number"
    t.string "website"
    t.string "tax_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_posts_on_organization_id"
  end

  create_table "registration_volunteers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.date "join_date"
    t.bigint "active_volunteer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active_volunteer_id"], name: "index_registration_volunteers_on_active_volunteer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "phone_number"
    t.string "address"
    t.string "account_number"
    t.string "activation_digest"
    t.string "activated"
    t.string "activated_at"
    t.string "remember_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_volunteers", "organizations"
  add_foreign_key "admins", "organizations"
  add_foreign_key "employees", "organizations"
  add_foreign_key "posts", "organizations"
  add_foreign_key "registration_volunteers", "active_volunteers"
end
