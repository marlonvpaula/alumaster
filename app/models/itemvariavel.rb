class Itemvariavel < ActiveRecord::Base
  belongs_to :item
  belongs_to :variavel

  validates :item_id, uniqueness: { scope: :variavel_id }
  validates :quantidade,
            presence: true
end
