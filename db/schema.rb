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

ActiveRecord::Schema.define(version: 20161214162645) do

  create_table "bikes", force: true do |t|
    t.string   "name"
    t.string   "maker"
    t.string   "size"
    t.integer  "price"
    t.text     "description"
    t.string   "picture"
    t.integer  "category_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "dob"
    t.string   "password_digest"
    t.integer  "phone_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "lineitems", force: true do |t|
    t.integer  "bike_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mechanics", force: true do |t|
    t.string   "name"
    t.text     "qualifications"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
  end

  create_table "orders", force: true do |t|
    t.string   "paymethod"
    t.decimal  "total"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parts", force: true do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "repairs", force: true do |t|
    t.text     "problem"
    t.integer  "bike_id"
    t.integer  "mechanic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
