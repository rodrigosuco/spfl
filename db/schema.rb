# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_05_30_230122) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "athletes", force: :cascade do |t|
    t.string "nome"
    t.integer "numero"
    t.string "posicao"
    t.string "tipo_atleta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.bigint "athletes_id", null: false
    t.text "historia"
    t.text "infos"
    t.string "titulo"
    t.string "titulo2"
    t.string "titulo3"
    t.string "titulo4"
    t.string "titulo5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athletes_id"], name: "index_teams_on_athletes_id"
  end

  add_foreign_key "teams", "athletes", column: "athletes_id"
end
