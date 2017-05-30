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

ActiveRecord::Schema.define(version: 20170530075902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "child_orders", force: :cascade do |t|
    t.integer  "orders_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orders_id"], name: "index_child_orders_on_orders_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.integer  "shop_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["shop_id"], name: "index_items_on_shop_id", using: :btree
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "items_id"
    t.integer  "orders_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["items_id"], name: "index_order_items_on_items_id", using: :btree
    t.index ["orders_id"], name: "index_order_items_on_orders_id", using: :btree
  end

  create_table "orders", force: :cascade do |t|
    t.boolean  "status"
    t.boolean  "delivery_type"
    t.integer  "users_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["users_id"], name: "index_orders_on_users_id", using: :btree
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.float    "lat"
    t.float    "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "child_orders", "orders", column: "orders_id"
  add_foreign_key "items", "shops"
  add_foreign_key "order_items", "items", column: "items_id"
  add_foreign_key "order_items", "orders", column: "orders_id"
  add_foreign_key "orders", "users", column: "users_id"
end
