class Users::RegistrationsController < Devise::RegistrationsController
  def validate
    render text: (User.find_by(name: params[:email]) ? "Name already exist" : "Available")
  end
end
