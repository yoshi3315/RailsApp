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

ActiveRecord::Schema.define(version: 20181030025500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.datetime "current_sign_in_at"
    t.index ["email"], name: "index_accounts_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true, using: :btree
  end

  create_table "answers", force: :cascade do |t|
    t.integer  "question_id"
    t.text     "content"
    t.text     "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "blogconfigs", force: :cascade do |t|
    t.text     "title"
    t.text     "subtitle"
    t.text     "stylename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bloggenres", force: :cascade do |t|
    t.text     "name"
    t.text     "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "blogposts", force: :cascade do |t|
    t.text     "title"
    t.text     "read"
    t.text     "content"
    t.integer  "bloggenre_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cards", force: :cascade do |t|
    t.text     "title"
    t.text     "author"
    t.integer  "price"
    t.text     "publisher"
    t.text     "memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "person_id"
    t.text     "title"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mycontacts", force: :cascade do |t|
    t.text     "name"
    t.integer  "age"
    t.boolean  "nationality"
    t.text     "mail"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "people", force: :cascade do |t|
    t.text     "name"
    t.integer  "age"
    t.text     "mail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questionaries", force: :cascade do |t|
    t.text     "title"
    t.text     "description"
    t.datetime "deadline"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questionary_choices", force: :cascade do |t|
    t.text     "content"
    t.integer  "value"
    t.integer  "questionary_item_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "questionary_items", force: :cascade do |t|
    t.text     "content"
    t.integer  "questionary_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questionary_results", force: :cascade do |t|
    t.integer  "questionary_id"
    t.text     "result"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.text     "name"
    t.boolean  "finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
