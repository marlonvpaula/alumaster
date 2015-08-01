class Perfil < ActiveRecord::Base
  has_many :itemperfils
  has_many :item, through: :itemperfils

  validates :descricao,
            presence: true
end
