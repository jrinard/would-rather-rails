FactoryGirl.define do
  factory :user do
    name 'Josh'
    sequence(:email){|n| "user#{n}@factory.com" }
    password '123456'
  end
end
