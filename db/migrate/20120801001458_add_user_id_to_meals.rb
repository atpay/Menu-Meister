class AddUserIdToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :user_id, :integer
    add_index :meals, :user_id
  end
end
