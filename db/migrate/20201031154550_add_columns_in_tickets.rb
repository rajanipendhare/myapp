class AddColumnsInTickets < ActiveRecord::Migration[6.0]
  def change
  	add_column :tickets, :zone, :string
  	add_column :tickets, :problem_decription, :string
  end
end