class Producto < ApplicationRecord
  belongs_to :categorium
  belongs_to :proveedor

  validates :nombre, presence: true
  validates :precio, numericality: { greater_than_or_equal_to: 0 }
  validates :stock, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :descripcion, presence: true
end
