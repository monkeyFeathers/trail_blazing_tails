class ChangeColumnToDogs < ActiveRecord::Migration
  def change
  	change_column :dogs, :second_dog, :boolean, :default => false
  end
end
