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

ActiveRecord::Schema[7.2].define(version: 2024_10_30_024844) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.date "fecha_de_creacion"
    t.string "estado"
    t.string "imagen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "telefono"
    t.string "direccion"
    t.date "fecha_registro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_de_pedidos", force: :cascade do |t|
    t.integer "cantidad"
    t.decimal "precio_unitario", precision: 10, scale: 2
    t.decimal "subtotal", precision: 10, scale: 2
    t.bigint "pedido_id", null: false
    t.bigint "producto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_detalle_de_pedidos_on_pedido_id"
    t.index ["producto_id"], name: "index_detalle_de_pedidos_on_producto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.date "fecha_pedido"
    t.decimal "total", precision: 10, scale: 2
    t.string "estado"
    t.string "metodo_de_pago"
    t.bigint "cliente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre"
    t.decimal "precio", precision: 10, scale: 2
    t.integer "stock"
    t.text "descripcion"
    t.bigint "categoria_id", null: false
    t.bigint "proveedor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["categoria_id"], name: "index_productos_on_categoria_id"
    t.index ["proveedor_id"], name: "index_productos_on_proveedor_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre"
    t.string "contacto"
    t.string "telefono"
    t.string "email"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "detalle_de_pedidos", "pedidos"
  add_foreign_key "detalle_de_pedidos", "productos"
  add_foreign_key "pedidos", "clientes"
  add_foreign_key "productos", "categoria", column: "categoria_id"
  add_foreign_key "productos", "proveedors"
end
