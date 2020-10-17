class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :description
      t.string :status
      t.string :location
      t.string :project_name

      t.timestamps
    end
  end
end
