class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.decimal :amount
      t.integer :type
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
