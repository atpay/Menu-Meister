class CreateFoodMeals < ActiveRecord::Migration
  def change
    create_table :food_meals do |t|
      t.integer :food_id
      t.integer :meal_id

      t.timestamps
    end

    add_index :food_meals, :food_id
    add_index :food_meals, :meal_id
  end
end
