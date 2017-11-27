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

ActiveRecord::Schema.define(version: 20171127132716) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "deputados", force: :cascade do |t|
    t.string   "nome"
    t.integer  "idade"
    t.string   "url_foto"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "partido_id"
    t.integer  "estado_id"
    t.string   "iddeputado"
    t.string   "idlegislatura"
  end

  add_index "deputados", ["estado_id"], name: "index_deputados_on_estado_id", using: :btree
  add_index "deputados", ["partido_id"], name: "index_deputados_on_partido_id", using: :btree

  create_table "estados", force: :cascade do |t|
    t.string   "nome"
    t.float    "total_gasto"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "gastos", force: :cascade do |t|
    t.string   "titulo"
    t.text     "informacao"
    t.float    "valor"
    t.integer  "deputado_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "iddocumento"
    t.string   "cnpjcpffornecedor"
    t.string   "nomefornecedor"
    t.string   "urldocumento"
    t.float    "valorliquido"
    t.date     "data"
  end

  add_index "gastos", ["deputado_id"], name: "index_gastos_on_deputado_id", using: :btree

  create_table "partidos", force: :cascade do |t|
    t.string   "nome"
    t.float    "total_gasto"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "sigla"
    t.string   "idpartido"
  end

  add_foreign_key "deputados", "estados"
  add_foreign_key "deputados", "partidos"
  add_foreign_key "gastos", "deputados"
end
