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

ActiveRecord::Schema.define(version: 20141017014304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alphabets", force: true do |t|
    t.string   "title"
    t.string   "explanation"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alphabets", ["course_id"], name: "index_alphabets_on_course_id", using: :btree

  create_table "attempts", force: true do |t|
    t.boolean  "has_attempted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "correct_answers", force: true do |t|
    t.integer  "question_id"
    t.text     "correctAnswerText"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.text     "title"
    t.text     "body"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
    t.integer  "section_id"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.integer  "lesson_id"
    t.string   "alignment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "quiz_id"
    t.text     "question_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "questionNum"
  end

  create_table "quizzes", force: true do |t|
    t.string   "name"
    t.integer  "lesson_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total_score"
  end

  create_table "sections", force: true do |t|
    t.string   "title"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signs", force: true do |t|
    t.string   "character"
    t.string   "explanation"
    t.integer  "alphabet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "signs", ["alphabet_id"], name: "index_signs_on_alphabet_id", using: :btree

  create_table "user_answers", force: true do |t|
    t.integer  "question_id"
    t.text     "userAnswerText"
    t.integer  "attempt_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "correct"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
