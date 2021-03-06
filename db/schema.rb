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

ActiveRecord::Schema.define(version: 20170428003002) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_products", force: :cascade do |t|
    t.integer "product_id"
    t.integer "category_id"
    t.index ["category_id"], name: "index_categories_products_on_category_id", using: :btree
    t.index ["product_id"], name: "index_categories_products_on_product_id", using: :btree
  end

  create_table "merchants", force: :cascade do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "oauth_uid"
    t.string   "oauth_provider"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_address"
    t.string   "customer_email"
    t.string   "credit_card_number"
    t.string   "status"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "customer_city"
    t.string   "customer_zipcode"
    t.string   "customer_state"
    t.integer  "credit_card_cvv"
    t.integer  "credit_card_zipcode"
    t.string   "credit_card_name"
    t.decimal  "total"
    t.decimal  "subtotal"
    t.decimal  "tax"
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_product_orders_on_order_id", using: :btree
    t.index ["product_id"], name: "index_product_orders_on_product_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.integer  "merchant_id"
    t.string   "name"
    t.decimal  "price"
    t.string   "description"
    t.string   "image"
    t.integer  "inventory"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["merchant_id"], name: "index_products_on_merchant_id", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "rating"
    t.string   "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_reviews_on_product_id", using: :btree
  end

end
