class Employee < ApplicationRecord
  belongs_to :state
  belongs_to :district
end