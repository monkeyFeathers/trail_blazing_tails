class ChangeColumnNameToDogs < ActiveRecord::Migration
  def change
  	rename_column :dogs, :second_dog, :additional_dog
  end
end
