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

ActiveRecord::Schema.define(version: 2021_10_29_024330) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "kinds"
    t.string "year"
    t.string "contents"
    t.string "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "kinds"
    t.string "year"
    t.string "contents"
    t.string "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kubuns", force: :cascade do |t|
    t.integer "code"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "middles", force: :cascade do |t|
    t.integer "course_id"
    t.integer "kubun_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "submissions", force: :cascade do |t|
    t.string "title"
    t.date "deadline"
    t.string "remarks"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "title"
    t.date "deadline"
    t.date "day"
    t.string "department"
    t.integer "price"
    t.integer "one"
    t.integer "two"
    t.integer "three"
    t.string "person"
    t.string "detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "account"
    t.string "password"
    t.integer "schoolyear"
    t.string "username"
    t.string "nickname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
<<<<<<< HEAD
    t.integer "course"
    t.text "detail"
    t.string "furigana"
=======
>>>>>>> 48ed74c692894ac1d65bd36a8f53b016ec5725ba
  end

end
