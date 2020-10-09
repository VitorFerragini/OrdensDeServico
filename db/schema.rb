# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_30_184847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.bigint "coordenadoria_id", null: false
    t.string "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coordenadoria_id"], name: "index_areas_on_coordenadoria_id"
  end

  create_table "coordenadorias", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fases", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ordens_de_servico", force: :cascade do |t|
    t.string "numero"
    t.bigint "pa_id", null: false
    t.bigint "tc_id", null: false
    t.bigint "tac_id", null: false
    t.date "data_emissao"
    t.bigint "coordenadoria_id"
    t.bigint "area_id"
    t.string "responsavel"
    t.boolean "emergencial"
    t.bigint "tipo_id"
    t.bigint "sistema_id"
    t.date "data_necessidade"
    t.date "data_entrega"
    t.decimal "esforco_estimado"
    t.bigint "fase_id", null: false
    t.date "fatura"
    t.decimal "esforco_realizado"
    t.date "data_aceite"
    t.string "obs"
    t.text "solicitacao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "titulo"
    t.string "ss"
    t.decimal "esforco_relacionamento"
    t.decimal "total_esforco"
    t.index ["area_id"], name: "index_ordens_de_servico_on_area_id"
    t.index ["coordenadoria_id"], name: "index_ordens_de_servico_on_coordenadoria_id"
    t.index ["fase_id"], name: "index_ordens_de_servico_on_fase_id"
    t.index ["pa_id"], name: "index_ordens_de_servico_on_pa_id"
    t.index ["sistema_id"], name: "index_ordens_de_servico_on_sistema_id"
    t.index ["tac_id"], name: "index_ordens_de_servico_on_tac_id"
    t.index ["tc_id"], name: "index_ordens_de_servico_on_tc_id"
    t.index ["tipo_id"], name: "index_ordens_de_servico_on_tipo_id"
  end

  create_table "pas", force: :cascade do |t|
    t.string "numero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sistemas", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tacs", force: :cascade do |t|
    t.string "numero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tcs", force: :cascade do |t|
    t.string "numero"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "rf"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["rf"], name: "index_users_on_rf", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "areas", "coordenadorias"
  add_foreign_key "ordens_de_servico", "areas"
  add_foreign_key "ordens_de_servico", "coordenadorias"
  add_foreign_key "ordens_de_servico", "fases"
  add_foreign_key "ordens_de_servico", "pas"
  add_foreign_key "ordens_de_servico", "sistemas"
  add_foreign_key "ordens_de_servico", "tacs"
  add_foreign_key "ordens_de_servico", "tcs"
  add_foreign_key "ordens_de_servico", "tipos"
end
