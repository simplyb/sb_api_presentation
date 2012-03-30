# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :location do
    zip "MyString"
    lat "MyString"
    long "MyString"
    street "MyString"
    city "MyString"
    state "MyString"
    country "MyString"
  end
end
