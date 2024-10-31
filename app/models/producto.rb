class Producto < ApplicationRecord
  belongs_to :categoria, class_name: "Categorias"
  belongs_to :proveedor
end
