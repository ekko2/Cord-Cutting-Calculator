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

ActiveRecord::Schema.define(version: 2019_03_27_040317) do

  create_table "channels", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "channels_stream_packages", id: false, force: :cascade do |t|
    t.integer "stream_package_id"
    t.integer "channel_id"
  end

  create_table "channels_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "channel_id"
    t.string "preferences"
  end

  create_table "stream_packages", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_channels", id: false, force: :cascade do |t|
    t.integer "users_id"
    t.integer "channels_id"
    t.index ["channels_id"], name: "index_user_channels_on_channels_id"
    t.index ["users_id"], name: "index_user_channels_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null:false
    t.string "email", null:false
    t.string "first_name"
    t.string "last_name"
    t.string "picture"
    t.string "password_digest"
    t.boolean "admin", default: false
  end

  create_table "user_antenna", id:false, force: :cascade do |t|
    t.interger "users_id"
    t.interger "channels_id"
  end

  create_table "box", force: :cascade do |t|
    t.string "name", null:false
  end

  create_table "box_channel", id:false, force: :cascade do |t|
    t.interger "box_id"
    t.interger "channel_id"
  end

  create_table "user_box", id:false, force: :cascade do |t|
    t.interger "users_id"
    t.interger "box_id"
  end

  create_table "devices", force: :cascade do |t|
    t.string "name", null:false
  end

  create_table "user_device", id:false, force: :cascade do |t|
    t.interger "users_id"
    t.interger "devices_id"
  end
end
