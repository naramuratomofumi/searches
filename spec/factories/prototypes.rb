FactoryBot.define do
  factory :prototype do
    season_id               { Faker::Number.between(from: 2, to: 12) }
    main_tops_category_id   { Faker::Number.between(from: 2, to: 4) }
    main_tops_col_id        { Faker::Number.between(from: 2, to: 13) }
    tops_category_id        { Faker::Number.between(from: 2, to: 4) }
    tops_col_id             { Faker::Number.between(from: 2, to: 13) }
    bottom_category_id      { Faker::Number.between(from: 2, to: 6) }
    bottom_col_id           { Faker::Number.between(from: 2, to: 13) }
    acc_category_id         { Faker::Number.between(from: 2, to: 11) }
    acc_col_id              { Faker::Number.between(from: 2, to: 13) }
    text                    { '商品説明(Text)（Ｔｅｘｔ）テキストてきすと０１２３４５６７８９０ﾃｷｽﾄ1234567890' }
    association :user

    after(:build) do |prototype|
      prototype.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
