class Esquadria < ActiveRecord::Base

  validates :descricao,
            presence: true
end
