class Cliente < ApplicationRecord
    has_many :pedidos
  
    validates :nombre, presence: true
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
  