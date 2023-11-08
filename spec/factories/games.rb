FactoryBot.define do
  factory :game do
    title { "Example Game Title" }
    description { "Example Game Description" }
    review_scores { 5 }
    main_image { nil }  # adjust this as needed depending on how you handle images
  end
end
