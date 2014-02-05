class AddTypeToRunners < ActiveRecord::Migration
  def change
  	add_column :runners, :type, :string
  end
end
