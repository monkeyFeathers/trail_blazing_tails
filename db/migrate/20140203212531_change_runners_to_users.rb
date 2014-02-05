class ChangeRunnersToUsers < ActiveRecord::Migration
  def change
  	rename_table :runners, :users
  end
end
