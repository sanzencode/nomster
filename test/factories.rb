FactoryGirl.define do

  factory :user do
    sequence :email do |n|
      "blahblah#{n}@gmail.com"
    end
    password "blahhhhh"
    password_confirmation "blahhhhh"
  end

  factory :place do
    name "My fakey fakey place"
    description "Eat everything"
    address "183 Delaney Drive, Chico, CA 95928"
    association :user
  end

  factory :comment do
    message "most wonderful place on earth"
    rating '3_stars'
    association :user
    association :place
  end

end