require 'factory_bot'

FactoryBot.define do
  factory :article do

    after(:build) do |article|
      article.image.attach(io: File.open('spec/fixtures/sample.png'), filename: 'sample.png', content_type: 'image/png')
    end
  end
end
