class Ticket < ApplicationRecord

  def address
    puts "============="
    p self.state+ ' ' +self.district
    puts "============="
  end

end
