require 'spec_helper'

include ApplicationHelper
include Warden::Test::Helpers
Warden.test_mode!

describe "Signin" do
  describe "/users/sign_in" do
    xit 'renders correct landing page' do
      page.should have_content 'Share Videos For Your Cause'
    end
  end

  describe "GET /users/sign_in" do
    before :each do
      @user = FactoryGirl.create(
        :user,
        :email    => 'walter@stormsavvy.com',
        :password => 'videogogo',
        :password_confirmation => 'videogogo'
      )
      login_as(@user, :scope => :user)
      visit new_user_session_path
    end

    it 'renders dashboard after login' do
      page.should have_content 'Your Current YouTube Videos'
      page.should have_content 'New YouTube Video'
    end
  end
end
