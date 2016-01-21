FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
    plan { create(:plan, :mentor) }
  end

  factory :profile do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    contact_email { Faker::Internet.email }
    coding_languages { Faker::Lorem.sentence }
    bio { Faker::Lorem.paragraph }
    mentoring_needs { Faker::Lorem.sentence }
  end

  factory :plan do
    trait :mentor do
      name "mentor"
    end
    trait :mentee do
      name "mentee"
    end
  end

  factory :contact do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    comments { Faker::Lorem.paragraph }
  end
end