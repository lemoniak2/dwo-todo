FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com"}
    sequence(:password) { 'Secret99' }
    name 'John Smith'

    trait :admin do
      after(:create) do |user, evaluator|
        user.add_role :admin
      end
    end

    trait :owner do
      after(:create) do |user, evaluator|
        user.add_role :organization_owner
      end
    end
  end
end
