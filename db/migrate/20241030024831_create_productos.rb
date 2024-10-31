class CreateProductos < ActiveRecord::Migration[7.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.decimal :precio, precision: 10, scale: 2
      t.integer :stock
      t.text :descripcion
      t.references :categoria, null: false, foreign_key: true
      t.references :proveedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
