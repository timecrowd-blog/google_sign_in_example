class ApplicationController < ActionController::Base
  def current_user
    session[:identity]
  end
  helper_method :current_user

  def user_signed_in?
    current_user.present?
  end
  helper_method :user_signed_in?
end
