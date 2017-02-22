require 'rails_helper'


describe "Add question" do
  before() do
    user = FactoryGirl.create(:user)
    login_as(user)
  end

  it "Create and View Question", :js => true do
    visit root_path
    find_link("New Question").trigger('click')
    sleep 1
    sleep 1
    # Async stuff
    expect(page).to have_content 'Option one'
    fill_in 'Option one', :with => 'taco'
    fill_in 'Option two', :with => 'taco'
    page.attach_file("Image", 'spec/images/test.jpg')
    page.attach_file("Image", 'spec/images/test2.jpg')
    click_on 'Create Question'
    # End Async stuff
  end
end
