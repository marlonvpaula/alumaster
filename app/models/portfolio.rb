class Portfolio < ActiveRecord::Base
	has_many :photos, :dependent => :delete_all
	accepts_nested_attributes_for :photos
	
	validates :title, 
            presence: true
end