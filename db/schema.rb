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

ActiveRecord::Schema.define(version: 20180303092957) do

  create_table "campus_lives", force: :cascade do |t|
    t.string "image1"
    t.string "image2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "campus_image1"
    t.string "campus_image2"
  end

  create_table "campus_ranks", force: :cascade do |t|
    t.string "rank1"
    t.string "rank2"
    t.string "rank3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "capacities", force: :cascade do |t|
    t.string "image"
    t.text "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "capa_image1"
    t.string "capa_image2"
    t.string "capa_image3"
    t.string "capa_image4"
    t.string "capa_image5"
    t.string "capa_image6"
  end

  create_table "date_places", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.text "context"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "place_image"
  end

  create_table "exam_comments", force: :cascade do |t|
    t.text "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exams", force: :cascade do |t|
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "exam_image"
  end

  create_table "introduce_university_words", force: :cascade do |t|
    t.string "title"
    t.text "meaning"
    t.text "example"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.text "context"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loves", force: :cascade do |t|
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "university_words", force: :cascade do |t|
    t.string "rank1"
    t.string "rank2"
    t.string "rank3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "mail"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_token"
  end

  create_table "words", force: :cascade do |t|
    t.string "name"
    t.integer "veryEasy"
    t.integer "easy"
    t.integer "normal"
    t.integer "hard"
    t.integer "veryHard"
    t.text "context"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
