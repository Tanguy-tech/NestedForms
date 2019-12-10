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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_12_09_154625) do
=======
ActiveRecord::Schema.define(version: 2019_12_09_111314) do
>>>>>>> d051cd5c55177b59f89593d11a11d150194a7b20

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "answers", force: :cascade do |t|
    t.integer "value"
    t.bigint "question_id"
    t.bigint "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["survey_id"], name: "index_answers_on_survey_id"
=======
  create_table "join_question_responses", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "response_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_join_question_responses_on_question_id"
    t.index ["response_id"], name: "index_join_question_responses_on_response_id"
  end

  create_table "join_response_respondents", force: :cascade do |t|
    t.bigint "response_id"
    t.bigint "respondent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["respondent_id"], name: "index_join_response_respondents_on_respondent_id"
    t.index ["response_id"], name: "index_join_response_respondents_on_response_id"
>>>>>>> d051cd5c55177b59f89593d11a11d150194a7b20
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "survey_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["survey_id"], name: "index_questions_on_survey_id"
  end

  create_table "respondents", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.integer "value"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_responses_on_question_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

<<<<<<< HEAD
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "surveys"
=======
  add_foreign_key "join_question_responses", "questions"
  add_foreign_key "join_question_responses", "responses"
  add_foreign_key "join_response_respondents", "respondents"
  add_foreign_key "join_response_respondents", "responses"
>>>>>>> d051cd5c55177b59f89593d11a11d150194a7b20
  add_foreign_key "questions", "surveys"
end
