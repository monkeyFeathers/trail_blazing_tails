class RemoveAccountNumberFromAccounts < ActiveRecord::Migration
  def change
  	remove_column :accounts, :account_number, :integer, :index => true
  end
end
