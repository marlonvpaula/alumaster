class Itemacessorio < ActiveRecord::Base
  belongs_to :item
  belongs_to :acessorio

  validates :item_id, uniqueness: { scope: :acessorio_id }
  validates :quantidade,
            presence: true
end
