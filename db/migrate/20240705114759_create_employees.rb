class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :designation
      t.references :department, null: false, foreign_key: true

      t.timestamps
    end
  end
end
