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

ActiveRecord::Schema.define(version: 2019_09_11_193051) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "char_spells", force: :cascade do |t|
    t.integer "character_id"
    t.bigint "spell_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spell_id"], name: "index_char_spells_on_spell_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "class_type_id"
    t.bigint "race_id"
    t.string "weapon"
    t.string "armor"
    t.string "description", default: "A brave (or foolish) adventurer!"
    t.string "img_url", default: "https://media.wizards.com/2015/images/dnd/ClassSymb_Fighter.png"
    t.integer "armor_class"
    t.integer "athletics"
    t.integer "subterfuge"
    t.integer "lore"
    t.integer "physical_save"
    t.integer "magic_save"
    t.integer "initiative"
    t.integer "max_hp"
    t.integer "hp"
    t.integer "level", default: 1
    t.integer "xp", default: 0
    t.integer "spell_slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_type_id"], name: "index_characters_on_class_type_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "class_type_abilities", force: :cascade do |t|
    t.integer "class_type_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "class_types", force: :cascade do |t|
    t.string "name"
    t.string "sub_type"
    t.string "caster_type"
    t.string "magic_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prepared_spells", force: :cascade do |t|
    t.integer "character_id"
    t.integer "spell_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "race_abilities", force: :cascade do |t|
    t.integer "race_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string "spell_type"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "char_spells", "spells"
  add_foreign_key "characters", "class_types"
  add_foreign_key "characters", "races"
  add_foreign_key "characters", "users"
end
