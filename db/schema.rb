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

ActiveRecord::Schema.define(version: 20160403102312) do

  create_table "amenities", force: :cascade do |t|
    t.string   "name"
    t.integer  "property_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "approvals", force: :cascade do |t|
    t.integer  "tenant_id"
    t.integer  "property_id"
    t.boolean  "approved"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "approvals", ["property_id"], name: "index_approvals_on_property_id"
  add_index "approvals", ["tenant_id", "property_id"], name: "index_approvals_on_tenant_id_and_property_id", unique: true
  add_index "approvals", ["tenant_id"], name: "index_approvals_on_tenant_id"

  create_table "landlords", force: :cascade do |t|
    t.string   "provider",                            null: false
    t.string   "uid",                    default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ph_no"
  end

  add_index "landlords", ["email"], name: "index_landlords_on_email"
  add_index "landlords", ["reset_password_token"], name: "index_landlords_on_reset_password_token", unique: true
  add_index "landlords", ["uid", "provider"], name: "index_landlords_on_uid_and_provider", unique: true

  create_table "matches", force: :cascade do |t|
    t.integer  "tenant_id"
    t.integer  "property_id"
    t.boolean  "matched"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "matches", ["property_id"], name: "index_matches_on_property_id"
  add_index "matches", ["tenant_id"], name: "index_matches_on_tenant_id"

  create_table "properties", force: :cascade do |t|
    t.integer  "landlord_id"
    t.string   "street"
    t.string   "town"
    t.string   "county"
    t.integer  "rent",           default: 1000
    t.integer  "n_baths",        default: 0
    t.boolean  "rent_allowance", default: false
    t.boolean  "ptrb",           default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "n_beds"
    t.integer  "avail_beds"
  end

  add_index "properties", ["landlord_id"], name: "index_properties_on_landlord_id"

  create_table "tenants", force: :cascade do |t|
    t.string   "provider",                            null: false
    t.string   "uid",                    default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "f_name"
    t.string   "l_name"
    t.string   "email"
    t.text     "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ph_no"
  end

  add_index "tenants", ["email"], name: "index_tenants_on_email"
  add_index "tenants", ["reset_password_token"], name: "index_tenants_on_reset_password_token", unique: true
  add_index "tenants", ["uid", "provider"], name: "index_tenants_on_uid_and_provider", unique: true

end
