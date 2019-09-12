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

ActiveRecord::Schema.define(version: 2019_09_10_201039) do

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "user_id"
    t.integer "one_day_id"
    t.integer "two_day_id"
    t.integer "three_day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["one_day_id"], name: "index_comments_on_one_day_id"
    t.index ["three_day_id"], name: "index_comments_on_three_day_id"
    t.index ["two_day_id"], name: "index_comments_on_two_day_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "picture"
    t.integer "one_day_id"
    t.integer "two_day_id"
    t.integer "three_day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["one_day_id"], name: "index_images_on_one_day_id"
    t.index ["three_day_id"], name: "index_images_on_three_day_id"
    t.index ["two_day_id"], name: "index_images_on_two_day_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.integer "one_day_id"
    t.integer "two_day_id"
    t.integer "three_day_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_likes_on_comment_id"
    t.index ["one_day_id"], name: "index_likes_on_one_day_id"
    t.index ["three_day_id"], name: "index_likes_on_three_day_id"
    t.index ["two_day_id"], name: "index_likes_on_two_day_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "one_days", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "day_one"
    t.integer "user_id"
    t.integer "destination_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_one_days_on_destination_id"
    t.index ["genre_id"], name: "index_one_days_on_genre_id"
    t.index ["user_id"], name: "index_one_days_on_user_id"
  end

  create_table "three_days", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "day_one"
    t.text "day_two"
    t.text "day_three"
    t.integer "user_id"
    t.integer "destination_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_three_days_on_destination_id"
    t.index ["genre_id"], name: "index_three_days_on_genre_id"
    t.index ["user_id"], name: "index_three_days_on_user_id"
  end

  create_table "two_days", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "day_one"
    t.text "day_two"
    t.integer "user_id"
    t.integer "destination_id"
    t.integer "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["destination_id"], name: "index_two_days_on_destination_id"
    t.index ["genre_id"], name: "index_two_days_on_genre_id"
    t.index ["user_id"], name: "index_two_days_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.text "bio"
    t.string "location"
    t.string "gender"
    t.string "profile_pic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
