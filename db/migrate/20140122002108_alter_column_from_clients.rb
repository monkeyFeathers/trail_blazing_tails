class AlterColumnFromClients < ActiveRecord::Migration
  def change
  	  	rename_column :clients, :account_id_id, :account_id
  end
end
