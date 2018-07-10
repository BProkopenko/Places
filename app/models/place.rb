class Place < ApplicationRecord
	validates :name, presence: true, length: {maximum: 50}
	validates :description, presence: true, length: {maximum: 500}
	mount_uploader :picture, PictureUploader
	validate :picture_size
belongs_to :user
	private

	def picture_size
		if picture.size > 5.megabytes
			errors.add(:picture, "should be less than 5MB")
		end
	end
end
