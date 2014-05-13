require 'spec_helper'

describe "Users Page" do

    it "should have the content 'Welcome'" do
      # visit is a method that comes from the capybara gem, 
      # and is typically used for view specs
      # alternatively you can try using "get '/log_in'"
      visit 'Login'
      expect(page).to have_content('Welcome')
    end
  end

