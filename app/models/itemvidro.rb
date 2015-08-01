class Itemvidro < ActiveRecord::Base
  belongs_to :item
  belongs_to :vidro

  validates :item_id, uniqueness: { scope: :vidro_id }
  validates :quantidade,
            presence: true
end
