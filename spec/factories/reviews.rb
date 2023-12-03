FactoryBot.define do
  factory :review do
    title { "MyString" }
    body { "MyText" }
    rating { 1 }
    post { nil }
  end
end
