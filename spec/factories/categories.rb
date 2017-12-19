FactoryBot.define do
  factory :category do
    name { Faker::Commerce.unique.department(1) }
  end
end
