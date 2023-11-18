# frozen_string_literal: true

10.times do
  Game.create!(
    title: Faker::Game.title,
    description: Faker::Lorem.sentence,
    review_scores: Faker::Number.between(from: 1, to: 100),
    main_image: File.open(Rails.root.join('db/images/mario_wonder.jpeg'))
)

end

10.times do
  Game.create!(
    title: Faker::Game.title,
    description: Faker::Lorem.sentence,
    review_scores: Faker::Number.between(from: 1, to: 100),
    main_image: File.open(Rails.root.join('db/images/mario_strikers.jpeg'))
)
end
