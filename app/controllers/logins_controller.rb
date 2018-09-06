class LoginsController < ApplicationController
  def new
  end

  def create
    if identity = authenticate_with_google
      session[:identity] = identity.email_address
      redirect_to :root
    else
      redirect_to :root, alert: 'authentication_failed'
    end
  end

  private

  def authenticate_with_google
    return if flash[:google_sign_in_token].blank?
    GoogleSignIn::Identity.new(flash[:google_sign_in_token])
  end
end
