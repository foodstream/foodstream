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

ActiveRecord::Schema.define(version: 20160419021752) do

  create_table "messages", force: :cascade do |t|
    t.integer  "post_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "sender_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "details"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "supplier_id"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.boolean  "claimed"
    t.boolean  "completed"
    t.integer  "claimant_id"
    t.decimal  "latitude",                precision: 12, scale: 7
    t.decimal  "longitude",               precision: 12, scale: 7
    t.string   "address_string"
    t.string   "post_image_file_name"
    t.string   "post_image_content_type"
    t.integer  "post_image_file_size"
    t.datetime "post_image_updated_at"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "rating"
    t.integer  "reviewer_id"
    t.integer  "reviewed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "email"
    t.string   "organization"
    t.text     "description"
    t.datetime "created_at",                                                          null: false
    t.datetime "updated_at",                                                          null: false
    t.string   "token"
    t.decimal  "latitude",                   precision: 12, scale: 7
    t.decimal  "longitude",                  precision: 12, scale: 7
    t.string   "address_string"
    t.string   "profile_image_file_name"
    t.string   "profile_image_content_type"
    t.integer  "profile_image_file_size"
    t.datetime "profile_image_updated_at"
    t.boolean  "verified",                                            default: false
    t.string   "verification_key"
  end

end
