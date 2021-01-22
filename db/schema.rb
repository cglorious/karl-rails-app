# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_22_193600) do

  create_table "businesses", force: :cascade do |t|
    t.string "name"
    t.integer "phone_number"
    t.string "city"
    t.string "state"
    t.float "price_range"
    t.float "rating"
    t.integer "customer_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_businesses_on_category_id"
    t.index ["customer_id"], name: "index_businesses_on_customer_id"
  end

  add_foreign_key "businesses", "categories"
  add_foreign_key "businesses", "customers"
end
