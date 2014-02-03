class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
    	t.string "name"
    	t.string "breed"
    	t.float "run_rate"
    	t.float "sit_rate"
    	t.integer "age"
    	t.string "notes"
    	t.boolean "second_dog", :default => true

      t.timestamps
    end
    add_reference :dogs, :account_id, index: true
  end
end
