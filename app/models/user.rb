class User < ActiveRecord::Base
  attr_accessible :email, :facebook_id, :name

  scope :admin, where(:is_admin => true)

  has_many :meals
  has_many :foods

  def options_for_foods
    if is_admin
      Food.joins(:user).
        where("users.is_admin = ? ", true)
    else
      Food.joins(:user).
        where("users.is_admin = ? or users.id = ?", true, id)
    end
  end
end
