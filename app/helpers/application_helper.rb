module ApplicationHelper
  def sign_in
    links = {}
    unless session[:name]
      links['Sign In'] = "/sign_in"
      links['Sign Up'] = "/users/new"
    else
      links["Logged in as " + session[:name]] = '/users/show'
    end
    links
  end

  def sign_out
    links = {}
    if session[:name]
      links['Sign Out'] = "/sign_out"
    end
    links
  end

  def logged_in?
    session[:name].nil? ? false : true
  end
end
