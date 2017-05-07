class Chroom < ApplicationRecord

	# Relationships
	has_many :chroom_users
	has_many :users, through: :chroom_users
	has_many :messages
	
end
