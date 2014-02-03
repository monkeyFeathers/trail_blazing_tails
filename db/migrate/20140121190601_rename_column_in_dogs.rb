class RenameColumnInDogs < ActiveRecord::Migration
  def change
  	rename_column :dogs, :account_id_id, :account_id
  end
end
