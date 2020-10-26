class AddColumnToTickets < ActiveRecord::Migration[6.0]
  def change
  	add_reference :tickets, :state, references: :state, index: true
  	add_reference :tickets, :district, references: :district, index: true
  end
end
