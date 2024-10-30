class CreateClientes < ActiveRecord::Migration[7.2]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :email
      t.string :telefono
      t.string :direccion
      t.date :fecha_registro

      t.timestamps
    end
  end
end
