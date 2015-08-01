class Itemperfil < ActiveRecord::Base
  belongs_to :item
  belongs_to :perfil

  validates :item_id, uniqueness: { scope: :perfil_id }
  validates :quantidade,
            presence: true
end
