FactoryBot.define do
  factory :account do
    name { Faker::Name.unique.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.phone_number }
    notes { Faker::Lorem.paragraph }
  end
end
