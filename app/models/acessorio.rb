class Acessorio < ActiveRecord::Base
  has_many :itemacessorios
  has_many :item, through: :itemacessorios

  validates :descricao,
            presence: true
end
