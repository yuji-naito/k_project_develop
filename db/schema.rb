# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_29_072132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "colors", force: :cascade do |t|
    t.bigint "sender_id", null: false
    t.bigint "receiver_id", null: false
    t.boolean "color1_flag"
    t.boolean "color2_flag"
    t.boolean "color3_flag"
    t.boolean "color4_flag"
    t.boolean "color5_flag"
    t.boolean "color6_flag"
    t.boolean "color7_flag"
    t.boolean "color8_flag"
    t.boolean "color9_flag"
    t.boolean "color10_flag"
    t.boolean "color11_flag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_id"], name: "index_colors_on_receiver_id"
    t.index ["sender_id"], name: "index_colors_on_sender_id"
  end

  create_table "letters", force: :cascade do |t|
    t.bigint "sender_id"
    t.bigint "receiver_id"
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["receiver_id"], name: "index_letters_on_receiver_id"
    t.index ["sender_id"], name: "index_letters_on_sender_id"
  end

  create_table "own_colors", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "color1", null: false
    t.integer "color2", null: false
    t.integer "color3", null: false
    t.integer "color4", null: false
    t.integer "color5", null: false
    t.integer "color6", null: false
    t.integer "color7", null: false
    t.integer "color8", null: false
    t.integer "color9", null: false
    t.integer "color10", null: false
    t.integer "color11", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_own_colors_on_user_id"
  end

  create_table "team_members", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "team_id", null: false
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["team_id"], name: "index_team_members_on_team_id"
    t.index ["user_id"], name: "index_team_members_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone_number"
    t.text "description"
    t.boolean "first_flag", default: true
    t.string "password_digest"
    t.string "remember_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "colors", "users", column: "receiver_id"
  add_foreign_key "colors", "users", column: "sender_id"
  add_foreign_key "letters", "users", column: "receiver_id"
  add_foreign_key "letters", "users", column: "sender_id"
  add_foreign_key "own_colors", "users"
  add_foreign_key "team_members", "teams"
  add_foreign_key "team_members", "users"
end
