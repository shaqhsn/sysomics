class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  helper_method :is_admin?
  def admin_only
      unless current_user.is_admin?
          redirect_to root_path, :alert => "Access denied."
      end
  end
  def raise_not_found!
      redirect_to root_path, :alert => "The page you requested is not found."

  end
  rescue_from NoMethodError, :with => :show_error
  def show_error
      redirect_to(root_url, :notice => '"No Method Error. Please Contact Admin"')
  end
end
  
