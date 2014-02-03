class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	t.references :account, :index => true
    	t.references :dog, :index => true
    	t.string :color
    	t.integer :quantity
    	t.float :discount
    	t.float :ammount

      t.timestamps
    end
  end
end
