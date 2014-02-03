class AddTerritoryToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :territory, :string
  end
end
