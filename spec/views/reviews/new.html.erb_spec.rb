require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      title: "MyString",
      body: "MyText",
      rating: 1,
      post: nil
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input[name=?]", "review[title]"

      assert_select "textarea[name=?]", "review[body]"

      assert_select "input[name=?]", "review[rating]"
    end
  end
end
