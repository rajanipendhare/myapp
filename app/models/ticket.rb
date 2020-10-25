class Ticket < ApplicationRecord
  validates :name, :state, :district, presence: true
  validates :name, numericality: false
  def address
    puts "============="
    p self.state+ ' ' +self.district
    puts "============="
  end

end
