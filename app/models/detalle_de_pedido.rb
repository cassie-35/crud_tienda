class DetalleDePedido < ApplicationRecord
  belongs_to :pedido
  belongs_to :producto

  validates :cantidad, presence: true, numericality: { greater_than: 0 }
end
