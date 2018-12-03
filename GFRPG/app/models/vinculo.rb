class Vinculo < ApplicationRecord
    has_many :users
	has_many :games
	has_many :sheets_bs
	has_many :sheets
end
