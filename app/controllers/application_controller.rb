class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :signed_in?

  include ApplicationHelper
  before_filter :check_authorization

  def check_authorization
    authorization_token = cookies[:authorization_token]
    if authorization_token and not logged_in?
      user = User.find_by_authorization_token(authorization_token)
      user.sign_in!(session) if user
    end
  end


  # def signed_in?
  #   session.has_key? :name
  # end

  private
end
