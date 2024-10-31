class CreateProveedors < ActiveRecord::Migration[7.2]
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :contacto
      t.string :telefono
      t.string :email
      t.string :direccion

      t.timestamps
    end
  end
end
