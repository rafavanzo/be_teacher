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

ActiveRecord::Schema[7.1].define(version: 2023_12_03_231253) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aulas", force: :cascade do |t|
    t.string "materia", null: false
    t.string "data", null: false
    t.string "hora_inicio", null: false
    t.string "hora_fim", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "conteudo", null: false
  end

  create_table "aulas_pessoas", id: false, force: :cascade do |t|
    t.bigint "aula_id", null: false
    t.bigint "pessoa_id", null: false
    t.index ["aula_id", "pessoa_id"], name: "index_aulas_pessoas_on_aula_id_and_pessoa_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string "nome", null: false
    t.string "cpf", null: false
    t.string "sexo", null: false
    t.date "data_nascimento", null: false
    t.string "email", null: false
    t.string "senha", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
