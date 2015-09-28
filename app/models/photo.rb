class Photo < ActiveRecord::Base
	belongs_to :portfolio

	mount_uploader :picture, PictureUploader
	
	validates :picture, 
            presence: true

end