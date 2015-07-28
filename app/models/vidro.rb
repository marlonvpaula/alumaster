class Vidro < ActiveRecord::Base

  validates :descricao,
            presence: true
end
