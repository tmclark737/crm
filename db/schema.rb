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

ActiveRecord::Schema.define(version: 20151223205549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "redress"
    t.string   "company"
    t.string   "email"
    t.string   "phone"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.decimal  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.integer  "client_id"
    t.decimal  "amount"
    t.integer  "type"
    t.string   "street"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "projects", ["client_id"], name: "index_projects_on_client_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "name"
    t.integer  "rank"
    t.boolean  "complete"
    t.date     "date"
    t.decimal  "time"
    t.integer  "employee_id"
    t.boolean  "qa"
    t.date     "qa_date"
    t.boolean  "paid"
    t.date     "paid_date"
    t.decimal  "amount"
    t.integer  "transaction_id"
    t.integer  "project_id"
    t.integer  "step"
    t.string   "before"
    t.string   "after"
    t.string   "count"
    t.boolean  "available"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "tasks", ["employee_id"], name: "index_tasks_on_employee_id", using: :btree
  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id", using: :btree
  add_index "tasks", ["transaction_id"], name: "index_tasks_on_transaction_id", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.string   "name"
    t.integer  "type"
    t.integer  "project_id"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "transactions", ["project_id"], name: "index_transactions_on_project_id", using: :btree

  add_foreign_key "projects", "clients"
  add_foreign_key "tasks", "employees"
  add_foreign_key "tasks", "projects"
  add_foreign_key "tasks", "transactions"
  add_foreign_key "transactions", "projects"
end
