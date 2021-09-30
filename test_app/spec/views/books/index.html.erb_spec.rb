require 'rails_helper'

RSpec.describe "books/index", type: :view do
  before(:each) do
    assign(:books, [
      Book.create!(
        title: "Title",
        author: "Author",
        price: 0.00,
        date: "1940-01-01"
      ),
      Book.create!(
        title: "Title",
        author: "Author",
        price: 0.00,
        date: "1940-01-01"
      )
    ])
  end

  it "renders a list of books" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", price: "Price"
    assert_select "tr>td", date: "Date"
  end
end
