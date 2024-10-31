class Pedido < ApplicationRecord
  belongs_to :cliente
  has_many :detalle_de_pedidos

  validates :fecha_pedido, presence: true
  validates :total, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
