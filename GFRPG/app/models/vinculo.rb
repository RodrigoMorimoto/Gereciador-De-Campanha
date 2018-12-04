class Vinculo < ApplicationRecord
    #has_many :users
	#has_many :games
	#has_many :sheets_bs
	#has_many :sheets
	belongs_to :users, dependent : : destroy
	belongs_to :games, dependent : : destroy
	has_many :sheets_bs
	has_many :sheets
end
