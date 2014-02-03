class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
    	t.references :dog
    	t.references :runner
    	t.datetime :run_date
    	t.string :duration
    	t.string :map_url
    	t.string :distance
    	t.string :pace

      t.timestamps
    end
    add_index :runs, ["dog_id", "runner_id"]
  end
end
