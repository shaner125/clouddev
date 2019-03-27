FactoryBot.define do
  factory :patientnote do
    sequence(:title) { |n| "title#{n}" }
    sequence(:content) { |n| content 'a' * 20 }
    patient
  end
end
