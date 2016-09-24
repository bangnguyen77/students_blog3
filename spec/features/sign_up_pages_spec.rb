require 'rails_helper'

describe "the sign up process" do
  it "creates a new user" do
    visit root_path
    click_link 'Sign Up'
    fill_in 'Email', :with => 'xyz@g.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end
