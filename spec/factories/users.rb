FactoryBot.define do
  factory :user do
    title {Faker::Lorem.sentence}
    image {Faker::Lorem.sentence}
  end
end
