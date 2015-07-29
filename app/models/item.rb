class Item < ActiveRecord::Base
  has_many :itemacessorios

  validates :descricao,
            presence: true
end
