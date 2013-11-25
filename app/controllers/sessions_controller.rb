class SessionsController < ApplicationController  
  def create
    @user = User.lookup(auth_hash)
    session[:user_id] = @user.id
    return redirect_to albums_path
  end

  def destroy
    session[:user_id] = nil
    return redirect_to albums_path
  end

  def echo
    render text: "#{current_user.try(:id)}"
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end