class AlterStartDateFromRunners < ActiveRecord::Migration
  def change
  	remove_column :runners, :start_date, :date_time
  	add_column :runners, :start_date, :string
  end
end
