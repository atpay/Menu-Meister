class AuthenticatedController < ApplicationController
  before_filter :authenticate_user

  def authenticate_user
    unless current_user
      redirect_to "/", :notice => "Please log in"
    end
  end
end
