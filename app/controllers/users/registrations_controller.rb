class Users::RegistrationsController < Devise::RegistrationsController
  def validate
    render text: (User.find_by(email: params[:email]) ? "Name already exist" : "Available")
  end
end
