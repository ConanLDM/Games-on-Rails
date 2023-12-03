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

10.times do
  Game.create!(
    title: Faker::Game.title,
    description: Faker::Lorem.sentence,
    review_scores: Faker::Number.between(from: 1, to: 100)
)
end

Post.create(title: "First post", body: "This is the first post body")

# Seed 2
Post.create(title: "Second post", body: "This is the second post body")

# Seed 3
Post.create(title: "Third post", body: "This is the third post body")

# Seed 4
Post.create(title: "Fourth post", body: "This is the fourth post body")

# Seed 5
Post.create(title: "Fifth post", body: "This is the fifth post body")

10.times do
  Review.create!(title: "Great game",
                  body: "I really enjoyed playing this game",
                  rating: 5)
end

puts "Game Reviews generated!"
