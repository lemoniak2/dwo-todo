FactoryGirl.define do
  factory :slide do
    transient do
      organization { create(:organization) }
    end

    global true
    sequence(:name) { |n| "Slide #{n}" }

    trait :with_image do
      remote_image_url { 'http://lorempixel.com/830/1200/' }
    end

    trait :linked do
      groups { create_list(:group, 2, organization: organization) }
    end

    trait :sectional do
      global false
      groups { create_list(:group, 1, organization: organization) }
    end
  end
end
