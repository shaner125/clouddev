FactoryGirl.define do
  factory :patient do
    sequence(:name) { |n| "name#{n}" }
    sequence(:date_of_birth) { |n| "#{n}/#{n}/#{n}" }
    sequence(:address) { |n| "Apartment #{n}, Tyrone House" }
    user
  end
end
