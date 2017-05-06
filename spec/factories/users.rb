FactoryGirl.define do
  factory :user do
    first_name
    last_name
    email
    social_security_number "111111111"
  end

  sequence :email do |n|
    "user#{n}@example.com"
  end

  sequence :first_name do |n|
    "user#{n}"
  end

  sequence :last_name do |n|
    "user#{n}"
  end

end
