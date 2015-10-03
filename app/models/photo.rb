class Photo < ActiveRecord::Base
	belongs_to :portfolio

	mount_uploader :picture, AvatarUploader
	#attachment :picture

	validates :picture, 
            presence: true

end