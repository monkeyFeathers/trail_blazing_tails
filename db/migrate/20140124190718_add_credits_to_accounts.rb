class AddCreditsToAccounts < ActiveRecord::Migration
  def change
  	add_column :accounts, :gold_run_credits, :integer
  	add_column :accounts, :silver_run_credits, :integer
  end
end
