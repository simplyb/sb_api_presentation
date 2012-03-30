# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequency :user_email do
    "user#{SecureRandom.hex(10)}@example.com"
  end
  sequency :username do
    "user#{SecureRandom.hex(5)}"
  end
  factory :user do
    u.username { FactoryGirl.generate :username }
    u.email { FactoryGirl.generate :user_email }
    u.password 'password123'
  end
end