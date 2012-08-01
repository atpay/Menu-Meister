class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    @user ||= User.find(session[:user_id])
  rescue ActiveRecord::RecordNotFound
  end

  def current_user=(user)
    session[:user_id] = user.try(:id)
  end

  helper_method :current_user
end
