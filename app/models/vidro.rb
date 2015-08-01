class Vidro < ActiveRecord::Base
  has_many :itemvidros
  has_many :item, through: :itemvidros

  validates :descricao,
            presence: true
end
