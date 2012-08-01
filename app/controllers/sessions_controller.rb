class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by_facebook_id(auth_hash["uid"].to_i)
    @user.update_attribute(:email, auth_hash["info"]["email"])

    self.current_user = @user
    redirect_to '/', :notice => "You're logged in"
  end

  def destroy
    self.current_user = nil
    redirect_to '/', :notice => "You're logged out"
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end
end
