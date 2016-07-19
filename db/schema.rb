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

ActiveRecord::Schema.define(version: 20160718174943) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "zip_code",      limit: 4
    t.string   "name_street",   limit: 255
    t.integer  "number_street", limit: 4
    t.string   "complement",    limit: 255
    t.integer  "member_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "addresses", ["member_id"], name: "index_addresses_on_member_id", using: :btree

  create_table "attendences", force: :cascade do |t|
    t.integer  "calendar_id", limit: 4
    t.integer  "class_id",    limit: 4
    t.integer  "member_id",   limit: 4
    t.integer  "checkin",     limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "attendences", ["calendar_id"], name: "index_attendences_on_calendar_id", using: :btree
  add_index "attendences", ["class_id"], name: "index_attendences_on_class_id", using: :btree
  add_index "attendences", ["member_id"], name: "index_attendences_on_member_id", using: :btree

  create_table "calendars", force: :cascade do |t|
    t.date     "event"
    t.integer  "repeat",      limit: 4
    t.text     "description", limit: 65535
    t.integer  "status",      limit: 4
    t.integer  "group_id",    limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "calendars", ["group_id"], name: "index_calendars_on_group_id", using: :btree

  create_table "classes", force: :cascade do |t|
    t.integer  "group_id",   limit: 4
    t.integer  "member_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "classes", ["group_id"], name: "index_classes_on_group_id", using: :btree
  add_index "classes", ["member_id"], name: "index_classes_on_member_id", using: :btree

  create_table "contacts", force: :cascade do |t|
    t.integer  "type",        limit: 4
    t.integer  "description", limit: 4
    t.integer  "address_id",  limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "member_id",   limit: 4
  end

  add_index "contacts", ["address_id"], name: "index_contacts_on_address_id", using: :btree
  add_index "contacts", ["member_id"], name: "index_contacts_on_member_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "status",     limit: 4
    t.integer  "member_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "groups", ["member_id"], name: "index_groups_on_member_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.date     "birthday"
    t.string   "social_security", limit: 11
    t.integer  "status",          limit: 4
    t.integer  "hierarchy",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_foreign_key "addresses", "members"
  add_foreign_key "attendences", "calendars"
  add_foreign_key "attendences", "classes"
  add_foreign_key "attendences", "members"
  add_foreign_key "calendars", "groups"
  add_foreign_key "classes", "groups"
  add_foreign_key "classes", "members"
  add_foreign_key "contacts", "addresses"
  add_foreign_key "contacts", "members"
  add_foreign_key "groups", "members"
end
