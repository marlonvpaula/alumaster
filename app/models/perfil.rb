class Perfil < ActiveRecord::Base

  validates :descricao,
            presence: true
end
