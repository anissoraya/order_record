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

ActiveRecord::Schema.define(version: 20170123061404) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "chef_orders", force: :cascade do |t|
    t.integer  "chef_id"
    t.integer  "order_id"
    t.integer  "amount_cook"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "chefs", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "day_data", force: :cascade do |t|
    t.string "name"
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_templates", force: :cascade do |t|
    t.integer  "day_data_id"
    t.integer  "customer_id"
    t.integer  "order_no"
    t.time     "time_order"
    t.integer  "runner_id"
    t.integer  "chef_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "item_id"
    t.index ["chef_id"], name: "index_order_templates_on_chef_id"
    t.index ["customer_id"], name: "index_order_templates_on_customer_id"
    t.index ["item_id"], name: "index_order_templates_on_item_id"
    t.index ["runner_id"], name: "index_order_templates_on_runner_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "quantity"
    t.integer  "customer_id"
    t.datetime "order_date"
    t.string   "order_day"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "runner_id"
    t.string   "name"
    t.integer  "day_data_id"
    t.integer  "chef_id"
    t.text     "note"
    t.index ["chef_id"], name: "index_orders_on_chef_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["day_data_id"], name: "index_orders_on_day_data_id"
    t.index ["runner_id"], name: "index_orders_on_runner_id"
  end

  create_table "runner_tasks", force: :cascade do |t|
    t.integer  "package_quantity"
    t.integer  "order_id"
    t.integer  "runner_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "runners", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "meta_id"
    t.string   "meta_type"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["meta_id", "meta_type"], name: "index_users_on_meta_id_and_meta_type"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
