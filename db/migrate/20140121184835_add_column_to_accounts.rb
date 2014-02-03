class AddColumnToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :account_number, :integer, :index => true
  end
end
