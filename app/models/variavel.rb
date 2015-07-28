class Variavel < ActiveRecord::Base

  validates :descricao,
            presence: true
end
