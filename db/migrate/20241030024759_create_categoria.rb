class CreateCategoria < ActiveRecord::Migration[7.2]
  def change
    create_table :categoria do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha_de_creacion
      t.string :estado
      t.string :imagen

      t.timestamps
    end
  end
end
