class Variavel < ActiveRecord::Base
  has_many :itemvariavels
  has_many :item, through: :itemvariavels

  validates :descricao,
            presence: true
end
