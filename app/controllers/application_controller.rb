# require "application_responder"
class ApplicationController < ActionController::Base
  # self.responder = ApplicationResponder
  # respond_to :html
  # delegate :current_user, :user_signed_in?, to: :user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :authenticate_user!


  def require_authentication
    unless user_signed_in?
      redirect_to new_user_sessions_path,
      alert: t('flash.alert.needs_login')
    end
  end
  def require_no_authentication
    if user_signed_in?
      redirect_to root_path,
      notice: t('flash.notice.already_logged_in')
    end
  end
  
  protected
  def authenticate_inviter!
    authenticate_admin!(:force => true)
  end


  
end
