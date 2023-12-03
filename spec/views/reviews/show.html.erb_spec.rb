require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    assign(:review, Review.create!(
      title: "Title",
      body: "MyText",
      rating: 2,
      post: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
