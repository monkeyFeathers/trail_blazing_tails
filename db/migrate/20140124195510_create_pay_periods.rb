class CreatePayPeriods < ActiveRecord::Migration
  def change
    create_table :pay_periods do |t|
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
