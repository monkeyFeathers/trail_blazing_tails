class AddDetailsToRuns < ActiveRecord::Migration
  def change
  	add_column :runs, :value, :string
  	add_reference :runs, :account, index: true
  end
end
