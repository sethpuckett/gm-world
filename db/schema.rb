# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_200_504_055_745) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'dice_types', force: :cascade do |t|
    t.string 'item_type', null: false
    t.integer 'sides', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['item_type'], name: 'index_dice_types_on_item_type', unique: true
  end

  create_table 'roll_items', force: :cascade do |t|
    t.string 'item_type', null: false
    t.jsonb 'content', default: '{}', null: false
    t.integer 'range_min', null: false
    t.integer 'range_max', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['content'], name: 'index_roll_items_on_content', using: :gin
    t.index %w[item_type range_min range_max], name: 'index_roll_items_on_item_type_and_range_min_and_range_max'
  end
end
