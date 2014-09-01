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

ActiveRecord::Schema.define(version: 20140901192146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_mes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "about_mes_photos", id: false, force: true do |t|
    t.integer "about_me_id", null: false
    t.integer "photo_id",    null: false
  end

  add_index "about_mes_photos", ["about_me_id"], name: "index_about_mes_photos_on_about_me_id", using: :btree
  add_index "about_mes_photos", ["photo_id"], name: "index_about_mes_photos_on_photo_id", using: :btree

  create_table "favourite_things", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favourite_things_photos", id: false, force: true do |t|
    t.integer "favourite_thing_id", null: false
    t.integer "photo_id",           null: false
  end

  add_index "favourite_things_photos", ["favourite_thing_id"], name: "index_favourite_things_photos_on_favourite_thing_id", using: :btree
  add_index "favourite_things_photos", ["photo_id"], name: "index_favourite_things_photos_on_photo_id", using: :btree

  create_table "hobbies", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "finder"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hobbies_photos", id: false, force: true do |t|
    t.integer "hobby_id", null: false
    t.integer "photo_id", null: false
  end

  add_index "hobbies_photos", ["hobby_id"], name: "index_hobbies_photos_on_hobby_id", using: :btree
  add_index "hobbies_photos", ["photo_id"], name: "index_hobbies_photos_on_photo_id", using: :btree

  create_table "key_design_elements", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "dev_tool_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "key_design_elements_web_projects", id: false, force: true do |t|
    t.integer "web_project_id",        null: false
    t.integer "key_design_element_id", null: false
  end

  add_index "key_design_elements_web_projects", ["key_design_element_id"], name: "index_key_design_elements_web_projects_on_key_design_element_id", using: :btree
  add_index "key_design_elements_web_projects", ["web_project_id"], name: "index_key_design_elements_web_projects_on_web_project_id", using: :btree

  create_table "photos", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos_web_projects", id: false, force: true do |t|
    t.integer "web_project_id", null: false
    t.integer "photo_id",       null: false
  end

  add_index "photos_web_projects", ["photo_id"], name: "index_photos_web_projects_on_photo_id", using: :btree
  add_index "photos_web_projects", ["web_project_id"], name: "index_photos_web_projects_on_web_project_id", using: :btree

  create_table "web_projects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "project_url"
    t.string   "key_dev_element"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
