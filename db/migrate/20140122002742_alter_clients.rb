class AlterClients < ActiveRecord::Migration
  def change
  	remove_column :clients, :territory, :string
  	add_column :clients, :phone_number, :string
  end
end
