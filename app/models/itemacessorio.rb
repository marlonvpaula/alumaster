class Itemacessorio < ActiveRecord::Base
  belongs_to :item
  belongs_to :acessorio

  validates :quantidade,
            presence: true
end
