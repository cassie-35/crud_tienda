class CreateDetalleDePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :detalle_de_pedidos do |t|
      t.integer :cantidad
      t.decimal :precio_unitario, precision: 10, scale: 2
      t.decimal :subtotal, precision: 10, scale: 2
      t.references :pedido, null: false, foreign_key: true
      t.references :producto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
