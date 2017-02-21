require 'rails_helper'

describe "create USER and LOGIN" do
  it "adds a user and logs in" do
    visit '/'
    click_on 'Sign up'
    fill_in 'Name', :with => 'Barry'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_button 'Sign up'
    expect(page).to have_content 'j@email.com'
  end
end
