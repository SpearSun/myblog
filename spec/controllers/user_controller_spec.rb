require 'rails_helper'

describe UsersController do
  describe '.show' do
    it "returns success" do
      expect(response).to be_success
    end
  end
end
