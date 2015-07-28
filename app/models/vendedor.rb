class Vendedor < ActiveRecord::Base

  validates :nome, 
            presence: true
end
