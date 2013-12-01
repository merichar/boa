require 'spec_helper'

describe "The signin process", :type => :feature do
  
  #These before and after should be in the helper. but linking is not working
  before :each do
    #Mock User in DB
    @user = User.new
    @user.email = "signin@boa.com"
    @user.password = "testtest"
    @user.password_confirmation = "testtest"
    @user.name = "Test User"
    @user.add_role :admin
    @user.save

    #let(:authed_user) { create_logged_in_user }
  end

  after :each do
    @user.destroy
    Warden.test_reset! 
  end

  it "has user who is not signed in" do
    visit 'users/sign_in'
    
    #make sure user is signed out
    page.should have_no_content('Logout')
  end

  it "signs in using form" do
    visit 'users/sign_in'

    #save_and_open_page
    within("#new_user") do
      fill_in 'user_email', :with => 'signin@boa.com'
      fill_in 'user_password', :with => 'testtest'
    end

    click_button 'sign_in'
    expect(page).to have_content 'Signed in successfully'
  end

  describe "sets session data" do
    it "should allow access" do
      login_as @user, scope: :user

      visit user_path(@user)
      #should be good
    end
  end
end