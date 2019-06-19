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

ActiveRecord::Schema.define(version: 2019_06_17_190912) do

  create_table "clients", force: :cascade do |t|
    t.string "username"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "title"
  end

  create_table "properties", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "zip_code"
    t.integer "pool_size"
    t.string "pool_material"
    t.boolean "pool_cover"
    t.integer "client_id"
  end

  create_table "services", force: :cascade do |t|
    t.integer "property_id"
    t.integer "employee_id"
    t.datetime "appointment"
    t.integer "service_cost"
    t.integer "materials_cost"
    t.integer "total"
    t.boolean "paid"
    t.text "job_description"
  end

end
