class State < ApplicationRecord
	has_many :districts
	has_many :employees
end
