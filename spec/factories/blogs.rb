FactoryBot.define do
  factory :blog do
    title {Faker::Lorem.sentence}
  
    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  
  end
end