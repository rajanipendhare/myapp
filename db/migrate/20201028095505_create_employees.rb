class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :f_name
      t.string :l_name
      t.string :gender
      t.date :birth_date
      t.string :contact
      t.references :state, null: false, foreign_key: true
      t.references :district, null: false, foreign_key: true
      t.date :joining_date
      t.string :aadhar_number
      t.boolean :is_active

      t.timestamps
    end
  end
end
