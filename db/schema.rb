# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_21_070114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorite_pictures", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "picture_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["picture_id"], name: "index_favorite_pictures_on_picture_id"
    t.index ["user_id"], name: "index_favorite_pictures_on_user_id"
  end

  create_table "favorite_products", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_favorite_products_on_product_id"
    t.index ["user_id"], name: "index_favorite_products_on_user_id"
  end

  create_table "picture_tags", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["picture_id"], name: "index_picture_tags_on_picture_id"
    t.index ["tag_id"], name: "index_picture_tags_on_tag_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.text "image", null: false
    t.string "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "picture_id", null: false
    t.string "name", null: false
    t.text "product_url", null: false
    t.text "image_url"
    t.text "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["picture_id"], name: "index_products_on_picture_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.text "image"
    t.string "content"
    t.integer "age"
    t.integer "constitution"
    t.integer "floor"
    t.integer "square"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "following_id"
    t.integer "follower_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "room_ideas", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name", null: false
    t.string "color"
    t.integer "width"
    t.integer "depth"
    t.integer "height"
    t.text "image"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_room_ideas_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorite_pictures", "pictures"
  add_foreign_key "favorite_pictures", "users"
  add_foreign_key "favorite_products", "products"
  add_foreign_key "favorite_products", "users"
  add_foreign_key "picture_tags", "pictures"
  add_foreign_key "picture_tags", "tags"
  add_foreign_key "pictures", "users"
  add_foreign_key "products", "pictures"
  add_foreign_key "profiles", "users"
  add_foreign_key "room_ideas", "users"
end
