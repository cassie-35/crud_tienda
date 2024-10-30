class CreatePedidos < ActiveRecord::Migration[7.2]
  def change
    create_table :pedidos do |t|
      t.date :fecha_pedido
      t.decimal :total, precision: 10, scale: 2
      t.string :estado
      t.string :metodo_de_pago
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
