require 'rails_helper'


describe "Add Clothing" do
  it "Create and View Clothing" do
    user = FactoryGirl.create(:user)
    visit '/'
    click_on 'New Question'
    fill_in 'Option one', :with => 'taco'
    fill_in 'Option two', :with => 'taco'
    page.attach_file("Image", 'spec/images/test.jpg')
    page.attach_file("Image", 'spec/images/test2.jpg')
    click_on 'Create Question'
    expect(page).to have_content 'taco'
  end
end
