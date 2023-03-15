require 'rails_helper'

RSpec.describe "Logins", type: :system do
  before do
    driven_by(:selenium_chrome, screen_size: [400, 400])
  end

  # pending "add some scenarios (or delete) #{__FILE__}"
  describe "Login" do
        before(:example) do
      user=User.create!(email: "userone@gamil.com", password: "123123",  encrypted_password:  "YcJlcyz.AT6UykD/8iuN.OcsQf98.5.8VXyCwupcTlEsUT.jlV6aS")
    end
    example 'User can login' do
      get '/users/sign_in'
       expect(response).to have_http_status(:success)
       p response.body
      extend(response.body.to_s).to include "Log in"
      # fill_in "",	with: "sometext"
    end
  end
end
