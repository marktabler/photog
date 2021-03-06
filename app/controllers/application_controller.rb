class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    User.find(session[:user_id]) if session[:user_id]
  end

  def current_admin
    current_user if current_admin?
  end

  def current_admin?
    current_user && current_user.admin
  end

  helper_method :current_user, :current_admin, :current_admin?

  def admin_required
    if Rails.env.production?
      return redirect_to root_path unless current_user && current_user.admin
    end
  end

end
