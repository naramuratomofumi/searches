FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 8) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
    fav_col_id            { Faker::Number.between(from: 2, to: 13) }
  end
end
