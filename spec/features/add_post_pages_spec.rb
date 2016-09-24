require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    user = User.create(user)
    visit new_user_session_path
    fill_in 'Email', :with => 'abc@gmail.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'
    click_button 'Add Post'
    fill_in "new_user_post_link", :with => "First post"
    fill_in "Content", :with => "Blah aha"
    click_on "Create Post"
    expect(page).to have_content "First post"
  end


end
