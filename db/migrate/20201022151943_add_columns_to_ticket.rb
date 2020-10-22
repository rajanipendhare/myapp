class AddColumnsToTicket < ActiveRecord::Migration[6.0]
  def change
  	add_column :tickets, :zone, :string 
  	add_column :tickets, :state, :string
  	add_column :tickets, :district, :string 
  	add_column :tickets, :component, :string
  	add_column :tickets, :problem_description, :text
  end
end
