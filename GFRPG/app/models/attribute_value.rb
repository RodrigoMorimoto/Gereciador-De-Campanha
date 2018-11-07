class AttributeValue < ApplicationRecord
	belongs_to :attribute
	belongs_to :sheet
end