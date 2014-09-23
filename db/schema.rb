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

ActiveRecord::Schema.define(version: 20140923091459) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  add_index "admins", ["unlock_token"], name: "index_admins_on_unlock_token", unique: true

  create_table "albums", force: true do |t|
    t.string   "name"
    t.string   "cover"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "banner"
  end

  create_table "audios", force: true do |t|
    t.string   "name"
    t.string   "audio"
    t.string   "album_id"
    t.string   "artist"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bible_hierarchies", id: false, force: true do |t|
    t.integer "ancestor_id",   null: false
    t.integer "descendant_id", null: false
    t.integer "generations",   null: false
  end

  add_index "bible_hierarchies", ["ancestor_id", "descendant_id"], name: "index_bible_hierarchies_on_ancestor_id_and_descendant_id", unique: true
  add_index "bible_hierarchies", ["descendant_id"], name: "index_bible_hierarchies_on_descendant_id"

  create_table "bibles", force: true do |t|
    t.string   "name"
    t.string   "bible_cover"
    t.integer  "admin_id"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
  end

  add_index "bibles", ["admin_id"], name: "index_bibles_on_admin_id"

  create_table "chapters", force: true do |t|
    t.integer  "chapter_number"
    t.string   "chapter_image"
    t.string   "chapter_audio"
    t.integer  "bible_id"
    t.integer  "admin_id"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "chapters", ["admin_id"], name: "index_chapters_on_admin_id"
  add_index "chapters", ["bible_id"], name: "index_chapters_on_bible_id"

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.integer  "contacttype"
    t.boolean  "approval"
    t.boolean  "status"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["admin_id"], name: "index_contacts_on_admin_id"

  create_table "daily_breads", force: true do |t|
    t.string   "message"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "audio"
  end

  create_table "friends", force: true do |t|
    t.string   "name"
    t.string   "friend_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sliders", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "slide"
    t.boolean  "status"
    t.integer  "admin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sliders", ["admin_id"], name: "index_sliders_on_admin_id"

  create_table "videos", force: true do |t|
    t.string   "name"
    t.string   "video"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
