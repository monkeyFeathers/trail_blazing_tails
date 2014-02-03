class AlterColumnsFromClients < ActiveRecord::Migration
  def change
  	rename_column :clients, :address, :street
  	add_column :clients, :second_phone, :string
  	remove_column :clients, :active, :boolean
  end
end
