class Mestre < ApplicationRecord
    has_many :game

    validates :name , uniqueness: true
end
