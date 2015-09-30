class Photo < ActiveRecord::Base
	belongs_to :portfolio

	#mount_uploader :picture, PictureUploader
	attachment :picture

	validates :picture, 
            presence: true

end