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

ActiveRecord::Schema.define(version: 20140707130906) do

  create_table "assets", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "uploaded_file_file_name"
    t.string   "uploaded_file_content_type"
    t.integer  "uploaded_file_file_size"
    t.datetime "uploaded_file_updated_at"
  end

  add_index "assets", ["user_id"], name: "index_assets_on_user_id"

  create_table "cell_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_processing_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_processings", force: true do |t|
    t.integer  "data_processing_type_id"
    t.integer  "software_id"
    t.integer  "data_set_id"
    t.integer  "file_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_set_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_sets", force: true do |t|
    t.integer  "data_set_type_id"
    t.integer  "project_id"
    t.date     "create_date"
    t.string   "name"
    t.string   "comment"
    t.integer  "file_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directories", force: true do |t|
    t.string   "name"
    t.string   "attachment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diseases", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiment_details", force: true do |t|
    t.integer  "sample_id"
    t.integer  "platform_id"
    t.integer  "protocol_id"
    t.integer  "disease_id"
    t.integer  "experiment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiments", force: true do |t|
    t.string   "name"
    t.string   "comment"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "molecules", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "organisms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "platforms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.integer  "user_id"
    t.integer  "experiment_id"
    t.integer  "publication_id"
    t.integer  "file_id"
    t.string   "title"
    t.string   "summary"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "attachment"
  end

  create_table "protocols", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "public_repositories", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "record_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publications", force: true do |t|
    t.integer  "public_repository_id"
    t.string   "DOI"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "samples", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.integer  "cell_type_id"
    t.integer  "tissue_id"
    t.integer  "organism_id"
    t.integer  "molecule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "software_parameters", force: true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "software_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", force: true do |t|
    t.string   "name"
    t.string   "version"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tissues", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
