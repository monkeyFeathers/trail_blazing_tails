class AddDetailsToAccounts < ActiveRecord::Migration
  def change
  	add_column :accounts, :vet, :string
  	add_column :accounts, :active, :boolean, {:defaul => true}
  	add_column :accounts, :emergency_vet, :string
  end
end
