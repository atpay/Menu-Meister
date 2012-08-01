class Meal < ActiveRecord::Base
  attr_accessible :description, :name, :food_ids

  validates_presence_of :name, :description

  has_many :foods, :through => :food_meals
  has_many :food_meals

  belongs_to :user
end
