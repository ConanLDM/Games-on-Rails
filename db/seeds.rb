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
  Review.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    body: Faker::Lorem.paragraph(sentence_count: 1),
    content: Faker::Lorem.paragraph(sentence_count: 3),
    rating: rand(1..5)
  )
end

Genre.create(name: 'Action')
Genre.create(name: 'Adventure')
Genre.create(name: 'Role-Playing')

puts "Games, Post, Genres and Game Reviews have been generated!"
