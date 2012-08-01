class FoodMeal < ActiveRecord::Base
  attr_accessible :food_id, :meal_id

  belongs_to :food
  belongs_to :meal
end
