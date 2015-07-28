class Acessorio < ActiveRecord::Base

  validates :descricao,
            presence: true
end
