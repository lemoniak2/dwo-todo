FactoryGirl.define do
  factory :group do
    sequence(:name) { |n| "Group #{n}" }
    sequence(:position)
    organization

    trait :global do
      organization { nil }
      global true
    end

    trait :with_image do
      remote_image_url { 'http://lorempixel.com/768/768/' }
    end

    trait :with_subgroups do
      children { create_list(:group, 2) }
    end

    trait :with_slides do
      slides { create_list(:slide, 5, :with_image) }
    end
  end
end
