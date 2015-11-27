class Portfolio < ActiveRecord::Base
	has_many :photos, :dependent => :delete_all
	
	validates :title, 
            presence: true
end