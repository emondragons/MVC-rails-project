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

ActiveRecord::Schema.define(version: 20130923201948) do

  create_table "business_categories", force: true do |t|
    t.string   "categories"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "business_category_has_vendors", force: true do |t|
    t.integer  "vendor_id"
    t.integer  "business_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "business_category_has_vendors", ["business_category_id"], name: "index_business_category_has_vendors_on_business_category_id"
  add_index "business_category_has_vendors", ["vendor_id"], name: "index_business_category_has_vendors_on_vendor_id"

  create_table "locations", force: true do |t|
    t.string   "longitude"
    t.string   "latitude"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["user_id"], name: "index_locations_on_user_id"

  create_table "scores", force: true do |t|
    t.integer  "value"
    t.integer  "tier"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["user_id"], name: "index_scores_on_user_id"

  create_table "specials", force: true do |t|
    t.string   "photo"
    t.string   "description"
    t.string   "title"
    t.integer  "vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "specials", ["vendor_id"], name: "index_specials_on_vendor_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "zipcode"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", force: true do |t|
    t.string   "vendor_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
