require 'rails_helper'

describe User do
  before do
    @user = User.new
    @user.password = 'password'
    @user.clear_password!
  end


  context '.clear_password!' do

    it "password was reset as nil" do
      expect(@user.password).to eq('password')
    end
  end
  
end
