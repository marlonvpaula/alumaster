class Item < ActiveRecord::Base
  has_many :itemacessorios
  has_many :acessorio, through: :itemacessorios

  has_many :itemperfils
  has_many :perfil, through: :itemperfils

  has_many :itemvariavels
  has_many :variavel, through: :itemvariavels

  has_many :itemvidros
  has_many :vidro, through: :itemvidros

  validates :descricao,
            presence: true
end
