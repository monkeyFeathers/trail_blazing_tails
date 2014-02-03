class AddPayPeriodToRuns < ActiveRecord::Migration
  def change
  	add_reference :runs, :pay_period, index:true
  end
end
