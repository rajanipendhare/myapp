class State < ApplicationRecord
	has_many :districts
	has_many :tickets
end
