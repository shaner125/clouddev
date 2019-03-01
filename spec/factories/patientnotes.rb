FactoryGirl.define do
  factory :patientnote do
    sequence(:title) { |n| "title#{n}" }
    content 'a' * 20
    patient
  end
end
