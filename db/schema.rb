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

ActiveRecord::Schema.define(version: 20180301235214) do

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

  create_table "university_words", force: :cascade do |t|
    t.string "rank1"
    t.string "rank2"
    t.string "rank3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
