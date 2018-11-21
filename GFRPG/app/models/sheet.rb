class Sheet < ApplicationRecord
	belongs_to :game
	belongs_to :user
	has_one :asset
end
