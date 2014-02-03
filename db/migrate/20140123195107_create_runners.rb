class CreateRunners < ActiveRecord::Migration
  def change
    create_table :runners do |t|
    	t.string "first_name"
    	t.string "last_name"
    	t.string "territory"
    	t.float "run_pay_rate"
    	t.string "email"
    	t.string "phone_number"
    	t.datetime "start_date"
    	t.string "address"

      t.timestamps
    end
  end
end
