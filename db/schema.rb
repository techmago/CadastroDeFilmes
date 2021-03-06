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

ActiveRecord::Schema.define(version: 20140507160258) do

  create_table "atores", force: true do |t|
    t.string   "nome"
    t.integer  "sexo",       default: 1
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "atores_filmes", id: false, force: true do |t|
    t.integer "ator_id"
    t.integer "filme_id"
  end

  create_table "diretores", force: true do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diretores_filmes", id: false, force: true do |t|
    t.integer "diretor_id"
    t.integer "filme_id"
  end

  create_table "filmes", force: true do |t|
    t.string   "titulo"
    t.string   "titulorg"
    t.integer  "anoF"
    t.boolean  "cor"
    t.integer  "genero_id"
    t.date     "dataA"
    t.integer  "anoA"
    t.integer  "midia_id"
    t.integer  "cotacao"
    t.integer  "pais_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generos", force: true do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "midias", force: true do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paises", force: true do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roteiristas", force: true do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roteiristas_filmes", id: false, force: true do |t|
    t.integer "roteirista_id"
    t.integer "filme_id"
  end

end
