class Sheet < ApplicationRecord
	belongs_to :game
	has_one :asset
end
