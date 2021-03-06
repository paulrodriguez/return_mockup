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

ActiveRecord::Schema.define(version: 20150727203109) do

  create_table "box_areas", force: true do |t|
    t.float    "posx"
    t.float    "posy"
    t.float    "width"
    t.float    "height"
    t.float    "canvas_width"
    t.float    "canvas_height"
    t.string   "fill"
    t.integer  "group_id"
    t.integer  "product_id"
    t.string   "area_box_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_items", force: true do |t|
    t.integer  "order_num"
    t.text     "product_name"
    t.text     "size"
    t.integer  "quantity"
    t.decimal  "original_price"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
    t.string   "status"
    t.integer  "product_id"
  end

  create_table "orders", force: true do |t|
    t.integer  "order_num"
    t.decimal  "amount"
    t.string   "first_name"
    t.string   "last_name"
    t.decimal  "discounts"
    t.decimal  "tax"
    t.decimal  "subtotal"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pin_attributes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.string   "fill"
  end

  create_table "products", force: true do |t|
    t.string   "sku"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_front"
    t.string   "image_back"
  end

  create_table "quantity_returns", force: true do |t|
    t.integer  "order_id"
    t.integer  "order_item_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "return_item_pins", force: true do |t|
    t.integer  "return_item_id"
    t.float    "pos_x"
    t.float    "pos_y"
    t.float    "radius"
    t.float    "canvas_width"
    t.float    "canvas_height"
    t.integer  "pin_attribute_id_id"
    t.string   "image_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "return_item_pins", ["pin_attribute_id_id"], name: "index_return_item_pins_on_pin_attribute_id_id"

  create_table "return_items", force: true do |t|
    t.integer  "return_order_id"
    t.integer  "order_num"
    t.integer  "order_id"
    t.string   "product_name"
    t.decimal  "amount_refunded"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.integer  "quantity"
    t.integer  "order_item_id"
  end

  create_table "return_order_attributes", force: true do |t|
    t.integer "return_reason_attribute_id"
    t.integer "return_item_id"
  end

  create_table "return_orders", force: true do |t|
    t.integer  "order_num"
    t.integer  "order_id"
    t.decimal  "amount_to_refund"
    t.integer  "return_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "height_feet"
    t.integer  "height_inches"
    t.integer  "heel_height"
  end

  create_table "return_reason_attributes", force: true do |t|
    t.integer "parent_id"
    t.string  "code_name"
    t.string  "attr_name"
    t.integer "display_order"
    t.integer "attr_type"
  end

end
