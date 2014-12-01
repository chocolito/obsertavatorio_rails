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

ActiveRecord::Schema.define(version: 20141201035917) do

  create_table "compania", force: true do |t|
    t.string   "nombre"
    t.integer  "cuenta"
    t.string   "twit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diccionarios", force: true do |t|
    t.string   "termino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "filtros", force: true do |t|
    t.string   "tipo"
    t.string   "termino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localizacions", force: true do |t|
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reclamos", force: true do |t|
    t.integer  "tweet"
    t.integer  "idTweet"
    t.integer  "compania"
    t.integer  "idCompania"
    t.string   "tipo"
    t.string   "servicio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweet_filtros", force: true do |t|
    t.integer  "filtro"
    t.integer  "idFiltro"
    t.integer  "tweet"
    t.integer  "idTweet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.text     "contenido"
    t.datetime "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "twwet_diccionario", force: true do |t|
    t.integer  "diccionario"
    t.integer  "idDiccionario"
    t.integer  "tweet"
    t.integer  "idTweet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuario_tweets", force: true do |t|
    t.integer  "tweet"
    t.integer  "idTweet"
    t.integer  "usuarios"
    t.integer  "idUsuarios"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "cuenta"
    t.string   "nombre"
    t.integer  "id_t"
    t.integer  "localizacion"
    t.integer  "id_local"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
