class Ticket < ApplicationRecord
	belongs_to :state
	belongs_to :district
  validates :name, :state, :district, presence: true
  validates :name, numericality: false
  def address
    puts "============="
    p self.state+ ' ' +self.district
    puts "============="
  end

end
