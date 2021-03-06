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

ActiveRecord::Schema.define(version: 20130926045335) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.float    "longitude"
    t.float    "latitude"
    t.string   "address"
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
    t.string   "zipcode"
    t.string   "password_digest"
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "lat"
    t.float    "long"
  end

  create_table "vendor_categories", force: true do |t|
    t.integer  "vendor_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendor_categories", ["category_id"], name: "index_vendor_categories_on_category_id"
  add_index "vendor_categories", ["vendor_id"], name: "index_vendor_categories_on_vendor_id"

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
