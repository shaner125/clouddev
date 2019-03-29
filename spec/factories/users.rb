
FactoryBot.define do 
  factory :user do
    sequence(:name) { |n| "test#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    sequence(:password) {|n| "123456" }
    sequence(:password_confirmation) {|n| "123456" }
  end
end