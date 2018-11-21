class Correlation < ApplicationRecord
    has_many :participations, dependent: :destroy
end
