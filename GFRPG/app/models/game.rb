class Game < ApplicationRecord
    has_many :participations
    belongs_to :mestre
end
