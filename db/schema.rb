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

ActiveRecord::Schema.define(version: 20141101091953) do

  create_table "high_scores", force: true do |t|
    t.string   "game"
    t.integer  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", force: true do |t|
    t.string   "picture_to_describe_style"
    t.text     "text_to_describe_style"
    t.text     "like_colors_materials_fabrics"
    t.text     "dislike_colors_materials_fabrics"
    t.text     "furniture"
    t.text     "occupants_of_house"
    t.text     "cannot_be_missed"
    t.text     "hate_at_other_appartments"
    t.integer  "budget"
    t.date     "furniture_needed_by"
    t.text     "additional_information"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
