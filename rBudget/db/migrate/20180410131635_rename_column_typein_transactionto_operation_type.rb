class RenameColumnTypeinTransactiontoOperationType < ActiveRecord::Migration[5.1]
  def change
    rename_column :transactions, :type, :operation_type
  end
end
