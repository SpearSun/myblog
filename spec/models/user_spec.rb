require 'rails_helper'

describe User do
  before(:each) do
    @user = User.new
    @user.id = 1
    @user.name = 'test'
    @user.password = 'password'
    @user.clear_password!
  end

  context '.sign_in!' do
    session = {}
    it do
      @user.sign_in!(session)
      session[:id] = @user.id
      session[:name] = @user.name
    end
  end

  context '.sign_out!' do
    session = { id: 1, name: 'test' }
    it do
      @user.sign_out!(session)
      session[:id] = nil
      session[:name] = nil
    end
  end

  context '.clear_password!' do
    it "password was reset as nil" do
      expect(@user.clear_password!).to eq(nil)
    end
  end
  
  context '.forget!' do
    cookies = { remember_me: 1, authorization_token: 'test' }
    it do
      @user.forget!(cookies)
      cookies[:remember_me] = nil
      cookies[:authorization_token] = nil
    end
  end
end
