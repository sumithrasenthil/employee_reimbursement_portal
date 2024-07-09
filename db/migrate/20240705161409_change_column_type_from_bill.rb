class ChangeColumnTypeFromBill < ActiveRecord::Migration[7.0]
  def change
    rename_column :bills, :type, :category
  end
end
