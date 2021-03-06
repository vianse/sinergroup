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

ActiveRecord::Schema.define(version: 20161026010000) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "cardpublicos", force: :cascade do |t|
    t.string   "pedidoID"
    t.string   "producto"
    t.string   "cantidad"
    t.string   "precio"
    t.string   "peso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string   "pedidoID"
    t.string   "cantidad"
    t.string   "productoID"
    t.string   "costo"
    t.string   "userID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condicions", force: :cascade do |t|
    t.string   "userID"
    t.string   "leido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedido_publicos", force: :cascade do |t|
    t.string   "pedido"
    t.string   "fecha"
    t.string   "nombre"
    t.string   "correo"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "calles"
    t.string   "municipio"
    t.string   "codigopostal"
    t.string   "rfc"
    t.string   "razonsocial"
    t.string   "direccionfiscal"
    t.string   "municipiofiscal"
    t.string   "codigopostalfiscal"
    t.string   "codigopromocional"
    t.string   "comentarios"
    t.string   "envioC"
    t.string   "envioS"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string   "titulo"
    t.string   "estatus"
    t.string   "comentarios"
    t.string   "envioC"
    t.string   "envioS"
    t.string   "userID"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "codigo"
    t.string   "descripcion"
    t.float    "costo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "recomendacions", force: :cascade do |t|
    t.string   "userID"
    t.string   "leido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
