FactoryGirl.define do
  factory :api_token do
    user
    access_token 'AccessToken123'
  end
end
