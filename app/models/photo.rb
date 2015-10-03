class Photo < ActiveRecord::Base
	belongs_to :portfolio

	attachment :picture

	validates :picture, 
            presence: true

end