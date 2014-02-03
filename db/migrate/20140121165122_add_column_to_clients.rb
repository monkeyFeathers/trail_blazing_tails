class AddColumnToClients < ActiveRecord::Migration
  def change
    add_reference :clients, :account_id, index: true
  end
end
