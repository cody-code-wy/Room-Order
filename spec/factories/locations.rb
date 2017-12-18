FactoryBot.define do
  factory :location do
    name { Faker::RickAndMorty.unique.location }
    description { Faker::Lorem.paragraph }
  end
end
