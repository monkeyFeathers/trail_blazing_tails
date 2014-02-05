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

ActiveRecord::Schema.define(version: 20140203212531) do

  create_table "accounts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "territory"
    t.string   "vet"
    t.boolean  "active"
    t.string   "emergency_vet"
    t.integer  "gold_run_credits"
    t.integer  "silver_run_credits"
  end

  create_table "admin_users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",        default: "", null: false
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
    t.string   "phone_number"
    t.string   "second_phone"
    t.string   "notes"
  end

  add_index "clients", ["account_id"], name: "index_clients_on_account_id"

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.string   "breed"
    t.float    "run_rate"
    t.float    "sit_rate"
    t.integer  "age"
    t.string   "notes"
    t.boolean  "additional_dog", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
  end

  add_index "dogs", ["account_id"], name: "index_dogs_on_account_id"

  create_table "orders", force: true do |t|
    t.integer  "account_id"
    t.integer  "dog_id"
    t.string   "color"
    t.integer  "quantity"
    t.float    "discount"
    t.float    "ammount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["account_id"], name: "index_orders_on_account_id"
  add_index "orders", ["dog_id"], name: "index_orders_on_dog_id"

  create_table "pay_periods", force: true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "runs", force: true do |t|
    t.integer  "dog_id"
    t.integer  "runner_id"
    t.datetime "run_date"
    t.string   "duration"
    t.string   "map_url"
    t.string   "distance"
    t.string   "pace"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "value"
    t.integer  "account_id"
    t.integer  "pay_period_id"
  end

  add_index "runs", ["account_id"], name: "index_runs_on_account_id"
  add_index "runs", ["dog_id", "runner_id"], name: "index_runs_on_dog_id_and_runner_id"
  add_index "runs", ["pay_period_id"], name: "index_runs_on_pay_period_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "territory"
    t.float    "run_pay_rate"
    t.string   "email"
    t.string   "phone_number"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "start_date"
    t.string   "password_digest"
    t.string   "type"
  end

end
