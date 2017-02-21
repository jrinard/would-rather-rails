
FactoryGirl.define do
  factory :question do
    option_one 'taco'
    option_one 'pizza'
    image { File.new(Rails.root.join('spec','images', 'test.jpg')) }
    image { File.new(Rails.root.join('spec','images', 'test2.jpg')) }
    user_id '1'
    end
  end
