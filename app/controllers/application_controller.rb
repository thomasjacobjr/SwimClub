class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :store_current_location, :unless => :devise_controller?

  def authenticate_admin_user!
    if current_user
      unless current_user.admin?
        redirect_to root_path, alert: t('alerts.admins_only')
      end
    else
      redirect_to new_user_session_path
    end
  end

  private

  def store_current_location
    store_location_for(:user, request.url)
  end
end
