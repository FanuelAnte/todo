FactoryBot.define do
  factory :to_do do
    task { Faker::Lorem.sentence(word_count: 5) }
    isComplete { true }
  end
end
