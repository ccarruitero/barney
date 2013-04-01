class ApplicationController < ActionController::Base
  include Guachiman::Permissible

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def current_user
    nil
  end

  def not_authorized
    redirect_to :root
  end
end
