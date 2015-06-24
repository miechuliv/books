class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_is_admin
    if current_user.nil? or !current_user.admin?
      flash[:alert] = "You have not perrmision to view this page"
      redirect_to root_path
    end
  end

end
