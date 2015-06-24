# require "application_responder"
class ApplicationController < ActionController::Base
  # self.responder = ApplicationResponder
  # respond_to :html
  # delegate :current_user, :user_signed_in?, to: :user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller?
      "admin"
    else
      "application"
    end
  end

end
