class Food < ActiveRecord::Base
  attr_accessible :calories, :name

  validates_presence_of :name
  validates_numericality_of :calories, :allow_nil => false

  belongs_to :user
end
