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

ActiveRecord::Schema.define(version: 20130812074623) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category_picture1_file_name"
    t.string   "category_picture1_content_type"
    t.integer  "category_picture1_file_size"
    t.datetime "category_picture1_updated_at"
  end

  create_table "industries", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "header"
  end

  add_index "industries", ["name"], name: "index_industries_on_name", unique: true

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "series"
    t.text     "description"
    t.text     "specs"
    t.string   "brand"
    t.integer  "sub_category_id"
    t.text     "remarks1"
    t.text     "remarks2"
    t.text     "remarks3"
    t.text     "remarks4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "product_picture1_file_name"
    t.string   "product_picture1_content_type"
    t.integer  "product_picture1_file_size"
    t.datetime "product_picture1_updated_at"
  end

  create_table "relation_industries", force: true do |t|
    t.integer  "industry_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relation_industries", ["industry_id", "product_id"], name: "index_relation_industries_on_industry_id_and_product_id", unique: true
  add_index "relation_industries", ["industry_id"], name: "index_relation_industries_on_industry_id"
  add_index "relation_industries", ["product_id"], name: "index_relation_industries_on_product_id"

  create_table "sub_categories", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sub_category_picture1_file_name"
    t.string   "sub_category_picture1_content_type"
    t.integer  "sub_category_picture1_file_size"
    t.datetime "sub_category_picture1_updated_at"
  end

end
