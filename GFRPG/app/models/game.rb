class Game < ApplicationRecord
    has_many :vinculo
    #belongs_to :vinculo
    belongs_to :mestre
end
