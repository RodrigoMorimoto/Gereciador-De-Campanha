class Participation < ApplicationRecord
	belongs_to :game
	has_many :users
end
