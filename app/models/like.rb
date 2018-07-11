class Like < ApplicationRecord
	belongs_to :place
	belongs_to :user
	validates :user_id, presence: true
	validates :place_id, presence: true
end